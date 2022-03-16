class Completion:
    def __init__(self, short_opt, long_opt, help_string):
        self.short_opt = short_opt
        self.long_opt = long_opt
        self.help_string = help_string

    def __repr__(self):
        return "Completion(short_opt=%s, long_opt=%s, help_string=%s)" % \
                (self.short_opt, self.long_opt, self.help_string)

class Command:
    def __init__(self, cmd, completions):
        self.cmd = cmd
        self.completions = completions

    def __repr__(self):
        return "Command(cmd=%s, completions=%s)" % \
                (self.cmd, self.completions)

def strip_option(long_opt):
    return long_opt.split("[")[0].split("=")[0].split(" ")[0]

def parse_help_output_dump():
    help_dump_file = open("help_output_dump.txt", "r")
    lines = help_dump_file.readlines()
    help_dump_file.close()

    commands = []

    current_command = ""
    for line in lines:
        if line.startswith("cmd"):
            # begin parsing of current command
            current_command = line.split(" ")[1].strip()
            print(f"Parsing command {current_command}")
            commands.append(Command(current_command, []))
            continue

        if not (line.isspace()):
            line_parts = line.split(",,")

            # Clean up the help string:
            # Escape backslashes
            # Escape quotes
            help_string = line_parts[1].strip().replace('\\', '\\\\').replace('"', '\\"')

            options = line_parts[0].split(", ")
            short_option = strip_option(options[0])
            if len(options) == 2:
                long_option = strip_option(options[1])
                commands[-1].completions.append(Completion(short_option, long_option, help_string))
            else:
                commands[-1].completions.append(Completion(short_option, None, help_string))
    return commands
    
def make_completion_function(command: Command):
    result = f"fn complete-{command.cmd} {{ |@args|\n"
    # Handle opt specs
    result += "    var opt-specs = [\n"
    for completion in command.completions:
        if completion.long_opt == None:
            # If the option starts with a double-dash (--), process it as a long option
            if completion.short_opt.startswith("--"):
                long_opt = completion.short_opt.strip("-")
                result += f"        [ &long={long_opt} &desc=\"{completion.help_string}\" ]\n"
            # Otherwise, process it as a short option
            else:
                short_opt = completion.short_opt.strip("-")
                result += f"        [ &short={short_opt} &desc=\"{completion.help_string}\" ]\n"
        else:
            short_opt = completion.short_opt.strip("-")
            long_opt = completion.long_opt.strip("-")
            result += f"        [ &short={short_opt} &long={long_opt} &desc=\"{completion.help_string}\" ]\n"
    result += "    ]\n"
    result += "    var arg-handlers = [ {|_| } ... ]\n" # Argument handlers are not supported
    result += "    edit:complete-getopt $args $opt-specs $arg-handlers\n"
    result += "}\n\n"
    return result

with open("complete.elv", "w") as library_file:
    commands = parse_help_output_dump()
    for command in commands:
        library_file.write(make_completion_function(command))

    # Add a function that sets up everything
    library_file.write("fn apply {\n")
    for command in commands:
        library_file.write(f"    set edit:completion:arg-completer[{command.cmd}] = {{ |@args|\n")
        library_file.write(f"        use str\n")
        library_file.write(f"        if (str:has-prefix $args[-1] \"-\") {{\n")
        library_file.write(f"            complete-{command.cmd} $@args\n")
        library_file.write(f"        }} else {{\n")
        library_file.write(f"            edit:complete-filename $args[-1]\n")
        library_file.write(f"        }}\n")
        library_file.write(f"    }}\n")
    library_file.write("}")
