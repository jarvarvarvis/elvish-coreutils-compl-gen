import os
import subprocess

# The list was generated on Arch Linux using the following command:
# pacman -Ql coreutils | grep /usr/bin | awk '{print $2}' | awk -F '/' '{ print "   ""\""$4"\"""," }'
coreutil_binaries = [
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

def dump_coreutil_help_output(name, f):
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
    for line in process.stdout:
        line = line.rstrip().decode("UTF-8")
        
        # Skip examples and alternative usages
        if line.startswith("Examples:"):
            break

        # Write options to the file
        valid = (line.startswith("  ") or line.startswith("      ")) and not (line.startswith("  or:"))
        if valid:
            # Split line on space
            usage_help_parts = line.split("  ")

            # Remove empty strings
            while '' in usage_help_parts:
                usage_help_parts.remove('')

            # Strip whitespace from the parts
            for i in range(len(usage_help_parts)):
                usage_help_parts[i] = usage_help_parts[i].strip()

            # Write options / help information to the file
            # Use ,, as separator because it doesn't appear in any help string
            f.write(",,".join(usage_help_parts))
            f.write("\n")
            
    print(f"Processed cmd {name}")

with open("help_output_dump.txt", "w") as help_dump_file:
    for coreutil in coreutil_binaries:
        help_dump_file.write(f"cmd {coreutil}\n")
        dump_coreutil_help_output(coreutil, help_dump_file)
        help_dump_file.write("\n\n")
