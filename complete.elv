# Generated using completion-generator.py
var b2sum-options = ['-b' '--binary' '-c' '--check' '-l' '--length' '--tag' '-t' '--text' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--help' '--version']
set edit:completion:arg-completer[b2sum] = {|@args| put $@b2sum-options }

var base32-options = ['-d' '--decode' '-i' '--ignore-garbage' '-w' '--wrap' '--help' '--version']
set edit:completion:arg-completer[base32] = {|@args| put $@base32-options }

var base64-options = ['-d' '--decode' '-i' '--ignore-garbage' '-w' '--wrap' '--help' '--version']
set edit:completion:arg-completer[base64] = {|@args| put $@base64-options }

var basename-options = ['-a' '--multiple' '-s' '--suffix' '-z' '--zero' '--help' '--version']
set edit:completion:arg-completer[basename] = {|@args| put $@basename-options }

var basenc-options = ['--base64' '--base64url' '--base32' '--base32hex' '--base16' '--base2msbf' '--base2lsbf' '-d' '--decode' '-i' '--ignore-garbage' '-w' '--wrap' '--z85' '--help' '--version']
set edit:completion:arg-completer[basenc] = {|@args| put $@basenc-options }

var cat-options = ['-A' '--show-all' '-b' '--number-nonblank' '-e' '-E' '--show-ends' '-n' '--number' '-s' '--squeeze-blank' '-t' '-T' '--show-tabs' '-u' '-v' '--show-nonprinting' '--help' '--version']
set edit:completion:arg-completer[cat] = {|@args| put $@cat-options }

var chcon-options = ['--dereference' '-h' '--no-dereference' '-u' '--user' '-r' '--role' '-t' '--type' '-l' '--range' '--no-preserve-root' '--preserve-root' '--reference' '-R' '--recursive' '-v' '--verbose' '-H' '-L' '-P' '--help' '--version']
set edit:completion:arg-completer[chcon] = {|@args| put $@chcon-options }

var chgrp-options = ['-c' '--changes' '-f' '--silent' '-v' '--verbose' '--dereference' '-h' '--no-dereference' '--no-preserve-root' '--preserve-root' '--reference' '-R' '--recursive' '-H' '-L' '-P' '--help' '--version']
set edit:completion:arg-completer[chgrp] = {|@args| put $@chgrp-options }

var chmod-options = ['-c' '--changes' '-f' '--silent' '-v' '--verbose' '--no-preserve-root' '--preserve-root' '--reference' '-R' '--recursive' '--help' '--version']
set edit:completion:arg-completer[chmod] = {|@args| put $@chmod-options }

var chown-options = ['-c' '--changes' '-f' '--silent' '-v' '--verbose' '--dereference' '-h' '--no-dereference' '--from' '--no-preserve-root' '--preserve-root' '--reference' '-R' '--recursive' '-H' '-L' '-P' '--help' '--version']
set edit:completion:arg-completer[chown] = {|@args| put $@chown-options }

var chroot-options = ['--groups' '--userspec' '--skip-chdir' '--help' '--version']
set edit:completion:arg-completer[chroot] = {|@args| put $@chroot-options }

var cksum-options = ['-a' '--algorithm' '-c' '--check' '-l' '--length' '--tag' '--untagged' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--debug' '--help' '--version']
set edit:completion:arg-completer[cksum] = {|@args| put $@cksum-options }

var comm-options = ['-1' '-2' '-3' '--check-order' '--nocheck-order' '--output-delimiter' '--total' '-z' '--zero-terminated' '--help' '--version']
set edit:completion:arg-completer[comm] = {|@args| put $@comm-options }

var cp-options = ['-a' '--archive' '--attributes-only' '--backup' '-b' '--copy-contents' '-d' '-f' '--force' '-i' '--interactive' '-H' '-l' '--link' '-L' '--dereference' '-n' '--no-clobber' '-P' '--no-dereference' '-p' '--preserve' '--no-preserve' '--parents' '-R' '-r' '--reflink' '--remove-destination' '--sparse' '--strip-trailing-slashes' '-s' '--symbolic-link' '-S' '--suffix' '-t' '--target-directory' '-T' '--no-target-directory' '-u' '--update' '-v' '--verbose' '-x' '--one-file-system' '-Z' '--context' '--help' '--version']
set edit:completion:arg-completer[cp] = {|@args| put $@cp-options }

var csplit-options = ['-b' '--suffix-format' '-f' '--prefix' '-k' '--keep-files' '--suppress-matched' '-n' '--digits' '-s' '--quiet' '-z' '--elide-empty-files' '--help' '--version']
set edit:completion:arg-completer[csplit] = {|@args| put $@csplit-options }

var cut-options = ['-b' '--bytes' '-c' '--characters' '-d' '--delimiter' '-f' '--fields' '-n' '--complement' '-s' '--only-delimited' '--output-delimiter' '-z' '--zero-terminated' '--help' '--version' '-M']
set edit:completion:arg-completer[cut] = {|@args| put $@cut-options }

var date-options = ['-d' '--date' '--debug' '-f' '--file' '-I' '--iso-8601' '-R' '--rfc-email' '--rfc-3339' '-r' '--reference' '-s' '--set' '-u' '--utc' '--help' '--version' '-']
set edit:completion:arg-completer[date] = {|@args| put $@date-options }

var dd-options = ['--help' '--version']
set edit:completion:arg-completer[dd] = {|@args| put $@dd-options }

var df-options = ['-a' '--all' '-B' '--block-size' '-h' '--human-readable' '-H' '--si' '-i' '--inodes' '-k' '-l' '--local' '--no-sync' '--output' '-P' '--portability' '--sync' '--total' '-t' '--type' '-T' '--print-type' '-x' '--exclude-type' '-v' '--help' '--version']
set edit:completion:arg-completer[df] = {|@args| put $@df-options }

var dir-options = ['-a' '--all' '-A' '--almost-all' '--author' '-b' '--escape' '--block-size' '-B' '--ignore-backups' '-c' '-C' '--color' '-d' '--directory' '-D' '--dired' '-f' '-F' '--classify' '--file-type' '--format' '--full-time' '-g' '--group-directories-first' '-G' '--no-group' '-h' '--human-readable' '--si' '-H' '--dereference-command-line' '--dereference-command-line-symlink-to-dir' '--hide' '--hyperlink' '--indicator-style' '-i' '--inode' '-I' '--ignore' '-k' '--kibibytes' '-l' '-L' '--dereference' '-m' '-n' '--numeric-uid-gid' '-N' '--literal' '-o' '-p' '--indicator-style' '-q' '--hide-control-chars' '--show-control-chars' '-Q' '--quote-name' '--quoting-style' '-r' '--reverse' '-R' '--recursive' '-s' '--size' '-S' '--sort' '--time' '--time-style' '-t' '-T' '--tabsize' '-u' '-U' '-v' '-w' '--width' '-x' '-X' '-Z' '--context' '--zero' '-1' '--help' '--version']
set edit:completion:arg-completer[dir] = {|@args| put $@dir-options }

var dircolors-options = ['-b' '--sh' '-c' '--csh' '-p' '--print-database' '--help' '--version']
set edit:completion:arg-completer[dircolors] = {|@args| put $@dircolors-options }

var dirname-options = ['-z' '--zero' '--help' '--version']
set edit:completion:arg-completer[dirname] = {|@args| put $@dirname-options }

var du-options = ['-0' '--null' '-a' '--all' '--apparent-size' '-B' '--block-size' '-b' '--bytes' '-c' '--total' '-D' '--dereference-args' '-d' '--max-depth' '--files0-from' '-H' '-h' '--human-readable' '--inodes' '-k' '-L' '--dereference' '-l' '--count-links' '-m' '-P' '--no-dereference' '-S' '--separate-dirs' '--si' '-s' '--summarize' '-t' '--threshold' '--time' '--time' '--time-style' '-X' '--exclude-from' '--exclude' '-x' '--one-file-system' '--help' '--version']
set edit:completion:arg-completer[du] = {|@args| put $@du-options }

var echo-options = ['-n' '-e' '-E' '--help' '--version']
set edit:completion:arg-completer[echo] = {|@args| put $@echo-options }

var env-options = ['-i' '--ignore-environment' '-0' '--null' '-u' '--unset' '-C' '--chdir' '-S' '--split-string' '--block-signal' '--default-signal' '--ignore-signal' '--list-signal-handling' '-v' '--debug' '--help' '--version']
set edit:completion:arg-completer[env] = {|@args| put $@env-options }

var expand-options = ['-i' '--initial' '-t' '--tabs' '-t' '--tabs' '--help' '--version']
set edit:completion:arg-completer[expand] = {|@args| put $@expand-options }

var expr-options = ['--help' '--version']
set edit:completion:arg-completer[expr] = {|@args| put $@expr-options }

var factor-options = ['--help' '--version']
set edit:completion:arg-completer[factor] = {|@args| put $@factor-options }

var false-options = ['--help' '--version']
set edit:completion:arg-completer[false] = {|@args| put $@false-options }

var fmt-options = ['-c' '--crown-margin' '-p' '--prefix' '-s' '--split-only' '-t' '--tagged-paragraph' '-u' '--uniform-spacing' '-w' '--width' '-g' '--goal' '--help' '--version']
set edit:completion:arg-completer[fmt] = {|@args| put $@fmt-options }

var fold-options = ['-b' '--bytes' '-s' '--spaces' '-w' '--width' '--help' '--version']
set edit:completion:arg-completer[fold] = {|@args| put $@fold-options }

var head-options = ['-c' '--bytes' '-n' '--lines' '-q' '--quiet' '-v' '--verbose' '-z' '--zero-terminated' '--help' '--version']
set edit:completion:arg-completer[head] = {|@args| put $@head-options }

var hostid-options = ['--help' '--version']
set edit:completion:arg-completer[hostid] = {|@args| put $@hostid-options }

var id-options = ['-a' '-Z' '--context' '-g' '--group' '-G' '--groups' '-n' '--name' '-r' '--real' '-u' '--user' '-z' '--zero' '--help' '--version']
set edit:completion:arg-completer[id] = {|@args| put $@id-options }

var install-options = ['--backup' '-b' '-c' '-C' '--compare' '-d' '--directory' '-D' '-g' '--group' '-m' '--mode' '-o' '--owner' '-p' '--preserve-timestamps' '-s' '--strip' '--strip-program' '-S' '--suffix' '-t' '--target-directory' '-T' '--no-target-directory' '-v' '--verbose' '--preserve-context' '-Z' '--context' '--help' '--version']
set edit:completion:arg-completer[install] = {|@args| put $@install-options }

var join-options = ['-a' '-e' '-i' '--ignore-case' '-j' '-o' '-t' '-v' '-1' '-2' '--check-order' '--nocheck-order' '--header' '-z' '--zero-terminated' '--help' '--version']
set edit:completion:arg-completer[join] = {|@args| put $@join-options }

var link-options = ['--help' '--version']
set edit:completion:arg-completer[link] = {|@args| put $@link-options }

var ln-options = ['--backup' '-b' '-d' '-F' '-f' '--force' '-i' '--interactive' '-L' '--logical' '-n' '--no-dereference' '-P' '--physical' '-r' '--relative' '-s' '--symbolic' '-S' '--suffix' '-t' '--target-directory' '-T' '--no-target-directory' '-v' '--verbose' '--help' '--version']
set edit:completion:arg-completer[ln] = {|@args| put $@ln-options }

var logname-options = ['--help' '--version']
set edit:completion:arg-completer[logname] = {|@args| put $@logname-options }

var ls-options = ['-a' '--all' '-A' '--almost-all' '--author' '-b' '--escape' '--block-size' '-B' '--ignore-backups' '-c' '-C' '--color' '-d' '--directory' '-D' '--dired' '-f' '-F' '--classify' '--file-type' '--format' '--full-time' '-g' '--group-directories-first' '-G' '--no-group' '-h' '--human-readable' '--si' '-H' '--dereference-command-line' '--dereference-command-line-symlink-to-dir' '--hide' '--hyperlink' '--indicator-style' '-i' '--inode' '-I' '--ignore' '-k' '--kibibytes' '-l' '-L' '--dereference' '-m' '-n' '--numeric-uid-gid' '-N' '--literal' '-o' '-p' '--indicator-style' '-q' '--hide-control-chars' '--show-control-chars' '-Q' '--quote-name' '--quoting-style' '-r' '--reverse' '-R' '--recursive' '-s' '--size' '-S' '--sort' '--time' '--time-style' '-t' '-T' '--tabsize' '-u' '-U' '-v' '-w' '--width' '-x' '-X' '-Z' '--context' '--zero' '-1' '--help' '--version']
set edit:completion:arg-completer[ls] = {|@args| put $@ls-options }

var md5sum-options = ['-b' '--binary' '-c' '--check' '--tag' '-t' '--text' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--help' '--version']
set edit:completion:arg-completer[md5sum] = {|@args| put $@md5sum-options }

var mkdir-options = ['-m' '--mode' '-p' '--parents' '-v' '--verbose' '-Z' '--context' '--help' '--version']
set edit:completion:arg-completer[mkdir] = {|@args| put $@mkdir-options }

var mkfifo-options = ['-m' '--mode' '-Z' '--context' '--help' '--version']
set edit:completion:arg-completer[mkfifo] = {|@args| put $@mkfifo-options }

var mknod-options = ['-m' '--mode' '-Z' '--context' '--help' '--version']
set edit:completion:arg-completer[mknod] = {|@args| put $@mknod-options }

var mktemp-options = ['-d' '--directory' '-u' '--dry-run' '-q' '--quiet' '--suffix' '-p' '--tmpdir' '-t' '--help' '--version']
set edit:completion:arg-completer[mktemp] = {|@args| put $@mktemp-options }

var mv-options = ['--backup' '-b' '-f' '--force' '-i' '--interactive' '-n' '--no-clobber' '--strip-trailing-slashes' '-S' '--suffix' '-t' '--target-directory' '-T' '--no-target-directory' '-u' '--update' '-v' '--verbose' '-Z' '--context' '--help' '--version']
set edit:completion:arg-completer[mv] = {|@args| put $@mv-options }

var nice-options = ['-n' '--adjustment' '--help' '--version']
set edit:completion:arg-completer[nice] = {|@args| put $@nice-options }

var nl-options = ['-b' '--body-numbering' '-d' '--section-delimiter' '-f' '--footer-numbering' '-h' '--header-numbering' '-i' '--line-increment' '-l' '--join-blank-lines' '-n' '--number-format' '-p' '--no-renumber' '-s' '--number-separator' '-v' '--starting-line-number' '-w' '--number-width' '--help' '--version']
set edit:completion:arg-completer[nl] = {|@args| put $@nl-options }

var nohup-options = ['--help' '--version']
set edit:completion:arg-completer[nohup] = {|@args| put $@nohup-options }

var nproc-options = ['--all' '--ignore' '--help' '--version']
set edit:completion:arg-completer[nproc] = {|@args| put $@nproc-options }

var numfmt-options = ['--debug' '-d' '--delimiter' '--field' '--format' '--from' '--from-unit' '--grouping' '--header' '--invalid' '--padding' '--round' '--suffix' '--to' '--to-unit' '-z' '--zero-terminated' '--help' '--version' '-M' '-']
set edit:completion:arg-completer[numfmt] = {|@args| put $@numfmt-options }

var od-options = ['-A' '--address-radix' '--endian' '-j' '--skip-bytes' '-N' '--read-bytes' '-S' '--strings' '-t' '--format' '-v' '--output-duplicates' '-w' '--width' '--traditional' '--help' '--version' '-a' '-b' '-c' '-d' '-f' '-i' '-l' '-o' '-s' '-x']
set edit:completion:arg-completer[od] = {|@args| put $@od-options }

var paste-options = ['-d' '--delimiters' '-s' '--serial' '-z' '--zero-terminated' '--help' '--version']
set edit:completion:arg-completer[paste] = {|@args| put $@paste-options }

var pathchk-options = ['-p' '-P' '--portability' '--help' '--version']
set edit:completion:arg-completer[pathchk] = {|@args| put $@pathchk-options }

var pinky-options = ['-l' '-b' '-h' '-p' '-s' '-f' '-w' '-i' '-q' '--help' '--version']
set edit:completion:arg-completer[pinky] = {|@args| put $@pinky-options }

var pr-options = ['-COLUMN' '--columns' '-a' '--across' '-c' '--show-control-chars' '-d' '--double-space' '-D' '--date-format' '-e' '--expand-tabs' '-F' '-f' '-h' '--header' '-i' '--output-tabs' '-J' '--join-lines' '-l' '--length' '-m' '--merge' '-n' '--number-lines' '-N' '--first-line-number' '-o' '--indent' '-r' '--no-file-warnings' '-s' '--separator' '-S' '--sep-string' '-t' '--omit-header' '-T' '--omit-pagination' '-v' '--show-nonprinting' '-w' '--width' '-W' '--page-width' '--help' '--version']
set edit:completion:arg-completer[pr] = {|@args| put $@pr-options }

var printenv-options = ['-0' '--null' '--help' '--version']
set edit:completion:arg-completer[printenv] = {|@args| put $@printenv-options }

var printf-options = ['--help' '--version']
set edit:completion:arg-completer[printf] = {|@args| put $@printf-options }

var ptx-options = ['-A' '--auto-reference' '-G' '--traditional' '-F' '--flag-truncation' '-M' '--macro-name' '-O' '--format' '-R' '--right-side-refs' '-S' '--sentence-regexp' '-T' '--format' '-W' '--word-regexp' '-b' '--break-file' '-f' '--ignore-case' '-g' '--gap-size' '-i' '--ignore-file' '-o' '--only-file' '-r' '--references' '-t' '--typeset-mode' '-w' '--width' '--help' '--version']
set edit:completion:arg-completer[ptx] = {|@args| put $@ptx-options }

var pwd-options = ['-L' '--logical' '-P' '--physical' '--help' '--version']
set edit:completion:arg-completer[pwd] = {|@args| put $@pwd-options }

var readlink-options = ['-f' '--canonicalize' '-e' '--canonicalize-existing' '-m' '--canonicalize-missing' '-n' '--no-newline' '-q' '--quiet' '-s' '--silent' '-v' '--verbose' '-z' '--zero' '--help' '--version']
set edit:completion:arg-completer[readlink] = {|@args| put $@readlink-options }

var realpath-options = ['-e' '--canonicalize-existing' '-m' '--canonicalize-missing' '-L' '--logical' '-P' '--physical' '-q' '--quiet' '--relative-to' '--relative-base' '-s' '--strip' '-z' '--zero' '--help' '--version']
set edit:completion:arg-completer[realpath] = {|@args| put $@realpath-options }

var rm-options = ['-f' '--force' '-i' '-I' '--interactive' '--one-file-system' '--no-preserve-root' '--preserve-root' '-r' '-R' '-d' '--dir' '-v' '--verbose' '--help' '--version']
set edit:completion:arg-completer[rm] = {|@args| put $@rm-options }

var rmdir-options = ['--ignore-fail-on-non-empty' '-p' '--parents' '-v' '--verbose' '--help' '--version']
set edit:completion:arg-completer[rmdir] = {|@args| put $@rmdir-options }

var runcon-options = ['-c' '--compute' '-t' '--type' '-u' '--user' '-r' '--role' '-l' '--range' '--help' '--version']
set edit:completion:arg-completer[runcon] = {|@args| put $@runcon-options }

var seq-options = ['-f' '--format' '-s' '--separator' '-w' '--equal-width' '--help' '--version']
set edit:completion:arg-completer[seq] = {|@args| put $@seq-options }

var sha1sum-options = ['-b' '--binary' '-c' '--check' '--tag' '-t' '--text' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--help' '--version']
set edit:completion:arg-completer[sha1sum] = {|@args| put $@sha1sum-options }

var sha224sum-options = ['-b' '--binary' '-c' '--check' '--tag' '-t' '--text' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--help' '--version']
set edit:completion:arg-completer[sha224sum] = {|@args| put $@sha224sum-options }

var sha256sum-options = ['-b' '--binary' '-c' '--check' '--tag' '-t' '--text' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--help' '--version']
set edit:completion:arg-completer[sha256sum] = {|@args| put $@sha256sum-options }

var sha384sum-options = ['-b' '--binary' '-c' '--check' '--tag' '-t' '--text' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--help' '--version']
set edit:completion:arg-completer[sha384sum] = {|@args| put $@sha384sum-options }

var sha512sum-options = ['-b' '--binary' '-c' '--check' '--tag' '-t' '--text' '-z' '--zero' '--ignore-missing' '--quiet' '--status' '--strict' '-w' '--warn' '--help' '--version']
set edit:completion:arg-completer[sha512sum] = {|@args| put $@sha512sum-options }

var shred-options = ['-f' '--force' '-n' '--iterations' '--random-source' '-s' '--size' '-u' '--remove' '-v' '--verbose' '-x' '--exact' '-z' '--zero' '--help' '--version']
set edit:completion:arg-completer[shred] = {|@args| put $@shred-options }

var shuf-options = ['-e' '--echo' '-i' '--input-range' '-n' '--head-count' '-o' '--output' '--random-source' '-r' '--repeat' '-z' '--zero-terminated' '--help' '--version']
set edit:completion:arg-completer[shuf] = {|@args| put $@shuf-options }

var sleep-options = ['--help' '--version']
set edit:completion:arg-completer[sleep] = {|@args| put $@sleep-options }

var sort-options = ['-b' '--ignore-leading-blanks' '-d' '--dictionary-order' '-f' '--ignore-case' '-g' '--general-numeric-sort' '-i' '--ignore-nonprinting' '-M' '--month-sort' '-h' '--human-numeric-sort' '-n' '--numeric-sort' '-R' '--random-sort' '--random-source' '-r' '--reverse' '--sort' '-V' '--version-sort' '--batch-size' '-c' '--check' '-C' '--check' '--compress-program' '--debug' '--files0-from' '-k' '--key' '-m' '--merge' '-o' '--output' '-s' '--stable' '-S' '--buffer-size' '-t' '--field-separator' '-T' '--temporary-directory' '--parallel' '-u' '--unique' '-z' '--zero-terminated' '--help' '--version']
set edit:completion:arg-completer[sort] = {|@args| put $@sort-options }

var split-options = ['-a' '--suffix-length' '--additional-suffix' '-b' '--bytes' '-C' '--line-bytes' '-d' '--numeric-suffixes' '-x' '--hex-suffixes' '-e' '--elide-empty-files' '--filter' '-l' '--lines' '-n' '--number' '-t' '--separator' '-u' '--unbuffered' '--verbose' '--help' '--version']
set edit:completion:arg-completer[split] = {|@args| put $@split-options }

var stat-options = ['-L' '--dereference' '-f' '--file-system' '--cached' '-c' '--printf' '-t' '--terse' '--help' '--version']
set edit:completion:arg-completer[stat] = {|@args| put $@stat-options }

var stdbuf-options = ['-i' '--input' '-o' '--output' '-e' '--error' '--help' '--version']
set edit:completion:arg-completer[stdbuf] = {|@args| put $@stdbuf-options }

var stty-options = ['-a' '--all' '-g' '--save' '-F' '--file' '--help' '--version']
set edit:completion:arg-completer[stty] = {|@args| put $@stty-options }

var sum-options = ['-r' '-s' '--sysv' '--help' '--version']
set edit:completion:arg-completer[sum] = {|@args| put $@sum-options }

var sync-options = ['-d' '--data' '-f' '--file-system' '--help' '--version']
set edit:completion:arg-completer[sync] = {|@args| put $@sync-options }

var tac-options = ['-b' '--before' '-r' '--regex' '-s' '--separator' '--help' '--version']
set edit:completion:arg-completer[tac] = {|@args| put $@tac-options }

var tail-options = ['-c' '--bytes' '-f' '--follow' '-F' '-n' '--lines' '--max-unchanged-stats' '--pid' '-q' '--quiet' '--retry' '-s' '--sleep-interval' '-v' '--verbose' '-z' '--zero-terminated' '--help' '--version']
set edit:completion:arg-completer[tail] = {|@args| put $@tail-options }

var tee-options = ['-a' '--append' '-i' '--ignore-interrupts' '-p' '--output-error' '--help' '--version']
set edit:completion:arg-completer[tee] = {|@args| put $@tee-options }

var test-options = []
set edit:completion:arg-completer[test] = {|@args| put $@test-options }

var timeout-options = ['--preserve-status' '--foreground' '-k' '--kill-after' '-s' '--signal' '-v' '--verbose' '--help' '--version' '-']
set edit:completion:arg-completer[timeout] = {|@args| put $@timeout-options }

var touch-options = ['-a' '-c' '--no-create' '-d' '--date' '-f' '-h' '--no-dereference' '-m' '-r' '--reference' '-t' '--time' '--help' '--version']
set edit:completion:arg-completer[touch] = {|@args| put $@touch-options }

var tr-options = ['-c' '-C' '-d' '--delete' '-s' '--squeeze-repeats' '-t' '--truncate-set1' '--help' '--version']
set edit:completion:arg-completer[tr] = {|@args| put $@tr-options }

var true-options = ['--help' '--version']
set edit:completion:arg-completer[true] = {|@args| put $@true-options }

var truncate-options = ['-c' '--no-create' '-o' '--io-blocks' '-r' '--reference' '-s' '--size' '--help' '--version']
set edit:completion:arg-completer[truncate] = {|@args| put $@truncate-options }

var tsort-options = ['--help' '--version']
set edit:completion:arg-completer[tsort] = {|@args| put $@tsort-options }

var tty-options = ['-s' '--silent' '--help' '--version']
set edit:completion:arg-completer[tty] = {|@args| put $@tty-options }

var uname-options = ['-a' '--all' '-s' '--kernel-name' '-n' '--nodename' '-r' '--kernel-release' '-v' '--kernel-version' '-m' '--machine' '-p' '--processor' '-i' '--hardware-platform' '-o' '--operating-system' '--help' '--version']
set edit:completion:arg-completer[uname] = {|@args| put $@uname-options }

var unexpand-options = ['-a' '--all' '--first-only' '-t' '--tabs' '-t' '--tabs' '--help' '--version']
set edit:completion:arg-completer[unexpand] = {|@args| put $@unexpand-options }

var uniq-options = ['-c' '--count' '-d' '--repeated' '-D' '--all-repeated' '-f' '--skip-fields' '--group' '-i' '--ignore-case' '-s' '--skip-chars' '-u' '--unique' '-z' '--zero-terminated' '-w' '--check-chars' '--help' '--version']
set edit:completion:arg-completer[uniq] = {|@args| put $@uniq-options }

var unlink-options = ['--help' '--version']
set edit:completion:arg-completer[unlink] = {|@args| put $@unlink-options }

var users-options = ['--help' '--version']
set edit:completion:arg-completer[users] = {|@args| put $@users-options }

var vdir-options = ['-a' '--all' '-A' '--almost-all' '--author' '-b' '--escape' '--block-size' '-B' '--ignore-backups' '-c' '-C' '--color' '-d' '--directory' '-D' '--dired' '-f' '-F' '--classify' '--file-type' '--format' '--full-time' '-g' '--group-directories-first' '-G' '--no-group' '-h' '--human-readable' '--si' '-H' '--dereference-command-line' '--dereference-command-line-symlink-to-dir' '--hide' '--hyperlink' '--indicator-style' '-i' '--inode' '-I' '--ignore' '-k' '--kibibytes' '-l' '-L' '--dereference' '-m' '-n' '--numeric-uid-gid' '-N' '--literal' '-o' '-p' '--indicator-style' '-q' '--hide-control-chars' '--show-control-chars' '-Q' '--quote-name' '--quoting-style' '-r' '--reverse' '-R' '--recursive' '-s' '--size' '-S' '--sort' '--time' '--time-style' '-t' '-T' '--tabsize' '-u' '-U' '-v' '-w' '--width' '-x' '-X' '-Z' '--context' '--zero' '-1' '--help' '--version']
set edit:completion:arg-completer[vdir] = {|@args| put $@vdir-options }

var wc-options = ['-c' '--bytes' '-m' '--chars' '-l' '--lines' '--files0-from' '-L' '--max-line-length' '-w' '--words' '--help' '--version']
set edit:completion:arg-completer[wc] = {|@args| put $@wc-options }

var who-options = ['-a' '--all' '-b' '--boot' '-d' '--dead' '-H' '--heading' '-l' '--login' '--lookup' '-m' '-p' '--process' '-q' '--count' '-r' '--runlevel' '-s' '--short' '-t' '--time' '-T' '-w' '-u' '--users' '--message' '--writable' '--help' '--version']
set edit:completion:arg-completer[who] = {|@args| put $@who-options }

var whoami-options = ['--help' '--version']
set edit:completion:arg-completer[whoami] = {|@args| put $@whoami-options }

var yes-options = ['--help' '--version']
set edit:completion:arg-completer[yes] = {|@args| put $@yes-options }

