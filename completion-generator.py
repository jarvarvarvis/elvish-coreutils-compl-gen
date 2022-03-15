import os
import subprocess

# The list was generated on Arch Linux using the following command:
# pacman -Ql coreutils | grep /usr/bin | awk '{print $2}' | awk -F '/' '{ print "   ""\""$4"\"""," }'
coreutils_binaries = [
	"b2sum",
	"base32",
	"base64",
	"basename",
	"basenc",
	"cat",
	"chcon",
	"chgrp",
	"chmod",
	"chown",
	"chroot",
	"cksum",
	"comm",
	"cp",
	"csplit",
	"cut",
	"date",
	"dd",
	"df",
	"dir",
	"dircolors",
	"dirname",
	"du",
	"echo",
	"env",
	"expand",
	"expr",
	"factor",
	"false",
	"fmt",
	"fold",
	"head",
	"hostid",
	"id",
	"install",
	"join",
	"link",
	"ln",
	"logname",
	"ls",
	"md5sum",
	"mkdir",
	"mkfifo",
	"mknod",
	"mktemp",
	"mv",
	"nice",
	"nl",
	"nohup",
	"nproc",
	"numfmt",
	"od",
	"paste",
	"pathchk",
	"pinky",
	"pr",
	"printenv",
	"printf",
	"ptx",
	"pwd",
	"readlink",
	"realpath",
	"rm",
	"rmdir",
	"runcon",
	"seq",
	"sha1sum",
	"sha224sum",
	"sha256sum",
	"sha384sum",
	"sha512sum",
	"shred",
	"shuf",
	"sleep",
	"sort",
	"split",
	"stat",
	"stdbuf",
	"stty",
	"sum",
	"sync",
	"tac",
	"tail",
	"tee",
	"test",
	"timeout",
	"touch",
	"tr",
	"true",
	"truncate",
	"tsort",
	"tty",
	"uname",
	"unexpand",
	"uniq",
	"unlink",
	"users",
	"vdir",
	"wc",
	"who",
	"whoami",
	"yes"
]

def get_coreutil_args(name):
    penv = dict(os.environ)
    penv["LANG"] = "C.UTF-8"  # Force use of the default locale
    process = subprocess.Popen(
            [name, "--help"], 
            env=penv,
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            close_fds=True
    )
    args = []
    for line in process.stdout:
        line = line.rstrip().decode("UTF-8")
        
        # Skip examples
        if line.startswith("Examples:"):
            break

        if (line.startswith("  -") or line.startswith("      --")) and not (line.startswith("  or:")):
            # Strip unnecessary whitespace from the line
            spacing_sanitized = line.strip()

            # Remove any help strings after the arguments (the least spacing amount of spacing was 1 tab character)
            help_string_sanitized = spacing_sanitized.split("  ")[0]

            # Remove (long) option assignment information
            # Maybe we can do this in the completer instead to still show it while matching?
            assign_sanitized = help_string_sanitized.split("=")[0].strip("[")

            # Split up the option into short and long form
            sub_args = assign_sanitized.split(",")

            # Remove unnecessary specifiers for short options
            # Maybe we can do this in the completer instead to still show it while matching?
            short_arg_sanitized = sub_args[0].split("[")[0].split(" ")[0]
            args.append(short_arg_sanitized)
            
            if len(sub_args) > 1:
                # Strip remaining whitespace from long option
                long_arg_sanitized = sub_args[1].strip()
                args.append(long_arg_sanitized)

    return args

for coreutil in coreutils_binaries:
    print(f"{coreutil}: ")
    for line in get_coreutil_args(coreutil):
        print(f"* {line}")
