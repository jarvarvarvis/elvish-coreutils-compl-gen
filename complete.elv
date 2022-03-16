fn complete-b2sum { |@args|
    var opt-specs = [
        [ &short=b &long=binary &desc="read in binary mode" ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &short=l &long=length &desc="digest length in bits; must not exceed the max for the blake2 algorithm and must be a multiple of 8" ]
        [ &long=tag &desc="create a BSD-style checksum" ]
        [ &short=t &long=text &desc="read in text mode (default)" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-base32 { |@args|
    var opt-specs = [
        [ &short=d &long=decode &desc="decode data" ]
        [ &short=i &long=ignore-garbage &desc="when decoding, ignore non-alphabet characters" ]
        [ &short=w &long=wrap &desc="wrap encoded lines after COLS character (default 76). Use 0 to disable line wrapping" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-base64 { |@args|
    var opt-specs = [
        [ &short=d &long=decode &desc="decode data" ]
        [ &short=i &long=ignore-garbage &desc="when decoding, ignore non-alphabet characters" ]
        [ &short=w &long=wrap &desc="wrap encoded lines after COLS character (default 76). Use 0 to disable line wrapping" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-basename { |@args|
    var opt-specs = [
        [ &short=a &long=multiple &desc="support multiple arguments and treat each as a NAME" ]
        [ &short=s &long=suffix &desc="remove a trailing SUFFIX; implies -a" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-basenc { |@args|
    var opt-specs = [
        [ &long=base64 &desc="same as 'base64' program (RFC4648 section 4)" ]
        [ &long=base64url &desc="file- and url-safe base64 (RFC4648 section 5)" ]
        [ &long=base32 &desc="same as 'base32' program (RFC4648 section 6)" ]
        [ &long=base32hex &desc="extended hex alphabet base32 (RFC4648 section 7)" ]
        [ &long=base16 &desc="hex encoding (RFC4648 section 8)" ]
        [ &long=base2msbf &desc="bit string with most significant bit (msb) first" ]
        [ &long=base2lsbf &desc="bit string with least significant bit (lsb) first" ]
        [ &short=d &long=decode &desc="decode data" ]
        [ &short=i &long=ignore-garbage &desc="when decoding, ignore non-alphabet characters" ]
        [ &short=w &long=wrap &desc="wrap encoded lines after COLS character (default 76). Use 0 to disable line wrapping" ]
        [ &long=z85 &desc="ascii85-like encoding (ZeroMQ spec:32/Z85); when encoding, input length must be a multiple of 4; when decoding, input length must be a multiple of 5" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-cat { |@args|
    var opt-specs = [
        [ &short=A &long=show-all &desc="equivalent to -vET" ]
        [ &short=b &long=number-nonblank &desc="number nonempty output lines, overrides -n" ]
        [ &short=e &desc="equivalent to -vE" ]
        [ &short=E &long=show-ends &desc="display $ at end of each line" ]
        [ &short=n &long=number &desc="number all output lines" ]
        [ &short=s &long=squeeze-blank &desc="suppress repeated empty output lines" ]
        [ &short=t &desc="equivalent to -vT" ]
        [ &short=T &long=show-tabs &desc="display TAB characters as ^I" ]
        [ &short=u &desc="(ignored)" ]
        [ &short=v &long=show-nonprinting &desc="use ^ and M- notation, except for LFD and TAB" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-chcon { |@args|
    var opt-specs = [
        [ &long=dereference &desc="affect the referent of each symbolic link (this is the default), rather than the symbolic link itself" ]
        [ &short=h &long=no-dereference &desc="affect symbolic links instead of any referenced file" ]
        [ &short=u &long=user &desc="set user USER in the target security context" ]
        [ &short=r &long=role &desc="set role ROLE in the target security context" ]
        [ &short=t &long=type &desc="set type TYPE in the target security context" ]
        [ &short=l &long=range &desc="set range RANGE in the target security context" ]
        [ &long=no-preserve-root &desc="do not treat '/' specially (the default)" ]
        [ &long=preserve-root &desc="fail to operate recursively on '/'" ]
        [ &long=reference &desc="use RFILE's security context rather than specifying a CONTEXT value" ]
        [ &short=R &long=recursive &desc="operate on files and directories recursively" ]
        [ &short=v &long=verbose &desc="output a diagnostic for every file processed" ]
        [ &short=H &desc="if a command line argument is a symbolic link to a directory, traverse it" ]
        [ &short=L &desc="traverse every symbolic link to a directory encountered" ]
        [ &short=P &desc="do not traverse any symbolic links (default)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-chgrp { |@args|
    var opt-specs = [
        [ &short=c &long=changes &desc="like verbose but report only when a change is made" ]
        [ &short=f &desc="suppress most error messages" ]
        [ &short=v &long=verbose &desc="output a diagnostic for every file processed" ]
        [ &long=dereference &desc="affect the referent of each symbolic link (this is the default), rather than the symbolic link itself" ]
        [ &short=h &long=no-dereference &desc="affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)" ]
        [ &long=no-preserve-root &desc="do not treat '/' specially (the default)" ]
        [ &long=preserve-root &desc="fail to operate recursively on '/'" ]
        [ &long=reference &desc="use RFILE's group rather than specifying a GROUP value" ]
        [ &short=R &long=recursive &desc="operate on files and directories recursively" ]
        [ &short=H &desc="if a command line argument is a symbolic link to a directory, traverse it" ]
        [ &short=L &desc="traverse every symbolic link to a directory encountered" ]
        [ &short=P &desc="do not traverse any symbolic links (default)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-chmod { |@args|
    var opt-specs = [
        [ &short=c &long=changes &desc="like verbose but report only when a change is made" ]
        [ &short=f &desc="suppress most error messages" ]
        [ &short=v &long=verbose &desc="output a diagnostic for every file processed" ]
        [ &long=no-preserve-root &desc="do not treat '/' specially (the default)" ]
        [ &long=preserve-root &desc="fail to operate recursively on '/'" ]
        [ &long=reference &desc="use RFILE's mode instead of MODE values" ]
        [ &short=R &long=recursive &desc="change files and directories recursively" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-chown { |@args|
    var opt-specs = [
        [ &short=c &long=changes &desc="like verbose but report only when a change is made" ]
        [ &short=f &desc="suppress most error messages" ]
        [ &short=v &long=verbose &desc="output a diagnostic for every file processed" ]
        [ &long=dereference &desc="affect the referent of each symbolic link (this is the default), rather than the symbolic link itself" ]
        [ &short=h &long=no-dereference &desc="affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)" ]
        [ &long=from &desc="change the owner and/or group of each file only if its current owner and/or group match those specified here. Either may be omitted, in which case a match is not required for the omitted attribute" ]
        [ &long=no-preserve-root &desc="do not treat '/' specially (the default)" ]
        [ &long=preserve-root &desc="fail to operate recursively on '/'" ]
        [ &long=reference &desc="use RFILE's owner and group rather than specifying OWNER:GROUP values" ]
        [ &short=R &long=recursive &desc="operate on files and directories recursively" ]
        [ &short=H &desc="if a command line argument is a symbolic link to a directory, traverse it" ]
        [ &short=L &desc="traverse every symbolic link to a directory encountered" ]
        [ &short=P &desc="do not traverse any symbolic links (default)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-chroot { |@args|
    var opt-specs = [
        [ &long=groups &desc="specify supplementary groups as g1,g2,..,gN" ]
        [ &long=userspec &desc="specify user and group (ID or name) to use" ]
        [ &long=skip-chdir &desc="do not change working directory to '/'" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-cksum { |@args|
    var opt-specs = [
        [ &short=a &long=algorithm &desc="select the digest type to use. See DIGEST below." ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &short=l &long=length &desc="digest length in bits; must not exceed the max for the blake2 algorithm and must be a multiple of 8" ]
        [ &long=tag &desc="create a BSD-style checksum (the default)" ]
        [ &long=untagged &desc="create a reversed style checksum, without digest type" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=debug &desc="indicate which implementation used" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-comm { |@args|
    var opt-specs = [
        [ &short=1 &desc="suppress column 1 (lines unique to FILE1)" ]
        [ &short=2 &desc="suppress column 2 (lines unique to FILE2)" ]
        [ &short=3 &desc="suppress column 3 (lines that appear in both files)" ]
        [ &long=check-order &desc="check that the input is correctly sorted, even if all input lines are pairable" ]
        [ &long=nocheck-order &desc="do not check that the input is correctly sorted" ]
        [ &long=output-delimiter &desc="separate columns with STR" ]
        [ &long=total &desc="output a summary" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-cp { |@args|
    var opt-specs = [
        [ &short=a &long=archive &desc="same as -dR --preserve=all" ]
        [ &long=attributes-only &desc="don't copy the file data, just the attributes" ]
        [ &long=backup &desc="make a backup of each existing destination file" ]
        [ &short=b &desc="like --backup but does not accept an argument" ]
        [ &long=copy-contents &desc="copy contents of special files when recursive" ]
        [ &short=d &desc="same as --no-dereference --preserve=links" ]
        [ &short=f &long=force &desc="if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used)" ]
        [ &short=i &long=interactive &desc="prompt before overwrite (overrides a previous -n option)" ]
        [ &short=H &desc="follow command-line symbolic links in SOURCE" ]
        [ &short=l &long=link &desc="hard link files instead of copying" ]
        [ &short=L &long=dereference &desc="always follow symbolic links in SOURCE" ]
        [ &short=n &long=no-clobber &desc="do not overwrite an existing file (overrides a previous -i option)" ]
        [ &short=P &long=no-dereference &desc="never follow symbolic links in SOURCE" ]
        [ &short=p &desc="same as --preserve=mode,ownership,timestamps" ]
        [ &long=preserve &desc="preserve the specified attributes (default: mode,ownership,timestamps), if possible additional attributes: context, links, xattr, all" ]
        [ &long=no-preserve &desc="don't preserve the specified attributes" ]
        [ &long=parents &desc="use full source file name under DIRECTORY" ]
        [ &short=R &desc="copy directories recursively" ]
        [ &long=reflink &desc="control clone/CoW copies. See below" ]
        [ &long=remove-destination &desc="remove each existing destination file before attempting to open it (contrast with --force)" ]
        [ &long=sparse &desc="control creation of sparse files. See below" ]
        [ &long=strip-trailing-slashes &desc="remove any trailing slashes from each SOURCE argument" ]
        [ &short=s &long=symbolic-link &desc="make symbolic links instead of copying" ]
        [ &short=S &long=suffix &desc="override the usual backup suffix" ]
        [ &short=t &long=target-directory &desc="copy all SOURCE arguments into DIRECTORY" ]
        [ &short=T &long=no-target-directory &desc="treat DEST as a normal file" ]
        [ &short=u &long=update &desc="copy only when the SOURCE file is newer than the destination file or when the destination file is missing" ]
        [ &short=v &long=verbose &desc="explain what is being done" ]
        [ &short=x &long=one-file-system &desc="stay on this file system" ]
        [ &short=Z &desc="set SELinux security context of destination file to default type" ]
        [ &long=context &desc="like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-csplit { |@args|
    var opt-specs = [
        [ &short=b &long=suffix-format &desc="use sprintf FORMAT instead of %02d" ]
        [ &short=f &long=prefix &desc="use PREFIX instead of 'xx'" ]
        [ &short=k &long=keep-files &desc="do not remove output files on errors" ]
        [ &long=suppress-matched &desc="suppress the lines matching PATTERN" ]
        [ &short=n &long=digits &desc="use specified number of digits instead of 2" ]
        [ &short=s &desc="do not print counts of output file sizes" ]
        [ &short=z &long=elide-empty-files &desc="remove empty output files" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-cut { |@args|
    var opt-specs = [
        [ &short=b &long=bytes &desc="select only these bytes" ]
        [ &short=c &long=characters &desc="select only these characters" ]
        [ &short=d &long=delimiter &desc="use DELIM instead of TAB for field delimiter" ]
        [ &short=f &long=fields &desc="select only these fields;" ]
        [ &short=n &desc="(ignored)" ]
        [ &long=complement &desc="complement the set of selected bytes, characters or fields" ]
        [ &short=s &long=only-delimited &desc="do not print lines not containing delimiters" ]
        [ &long=output-delimiter &desc="use STRING as the output delimiter the default is to use the input delimiter" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-date { |@args|
    var opt-specs = [
        [ &short=d &long=date &desc="display time described by STRING, not 'now'" ]
        [ &long=debug &desc="annotate the parsed date, and warn about questionable usage to stderr" ]
        [ &short=f &long=file &desc="like --date; once for each line of DATEFILE" ]
        [ &short=I &long=iso-8601 &desc="output date/time in ISO 8601 format. FMT='date' for date only (the default), 'hours', 'minutes', 'seconds', or 'ns' for date and time to the indicated precision. Example: 2006-08-14T02:34:56-06:00" ]
        [ &short=R &long=rfc-email &desc="output date and time in RFC 5322 format. Example: Mon, 14 Aug 2006 02:34:56 -0600" ]
        [ &long=rfc-3339 &desc="output date/time in RFC 3339 format. FMT='date', 'seconds', or 'ns' for date and time to the indicated precision. Example: 2006-08-14 02:34:56-06:00" ]
        [ &short=r &long=reference &desc="display the last modification time of FILE" ]
        [ &short=s &long=set &desc="set time described by STRING" ]
        [ &short=u &desc="print or set Coordinated Universal Time (UTC)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-dd { |@args|
    var opt-specs = [
        [ &short=bs &desc="read and write up to BYTES bytes at a time (default: 512); overrides ibs and obs" ]
        [ &short=cbs &desc="convert BYTES bytes at a time" ]
        [ &short=conv &desc="convert the file as per the comma separated symbol list" ]
        [ &short=count &desc="copy only N input blocks" ]
        [ &short=ibs &desc="read up to BYTES bytes at a time (default: 512)" ]
        [ &short=if &desc="read from FILE instead of stdin" ]
        [ &short=iflag &desc="read as per the comma separated symbol list" ]
        [ &short=obs &desc="write BYTES bytes at a time (default: 512)" ]
        [ &short=of &desc="write to FILE instead of stdout" ]
        [ &short=oflag &desc="write as per the comma separated symbol list" ]
        [ &short=seek &desc="skip N obs-sized blocks at start of output" ]
        [ &short=skip &desc="skip N ibs-sized blocks at start of input" ]
        [ &short=status &desc="The LEVEL of information to print to stderr; 'none' suppresses everything but error messages, 'noxfer' suppresses the final transfer statistics, 'progress' shows periodic transfer statistics" ]
        [ &short=ascii &desc="from EBCDIC to ASCII" ]
        [ &short=ebcdic &desc="from ASCII to EBCDIC" ]
        [ &short=ibm &desc="from ASCII to alternate EBCDIC" ]
        [ &short=block &desc="pad newline-terminated records with spaces to cbs-size" ]
        [ &short=unblock &desc="replace trailing spaces in cbs-size records with newline" ]
        [ &short=lcase &desc="change upper case to lower case" ]
        [ &short=ucase &desc="change lower case to upper case" ]
        [ &short=sparse &desc="try to seek rather than write all-NUL output blocks" ]
        [ &short=swab &desc="swap every pair of input bytes" ]
        [ &short=sync &desc="pad every input block with NULs to ibs-size; when used with block or unblock, pad with spaces rather than NULs" ]
        [ &short=excl &desc="fail if the output file already exists" ]
        [ &short=nocreat &desc="do not create the output file" ]
        [ &short=notrunc &desc="do not truncate the output file" ]
        [ &short=noerror &desc="continue after read errors" ]
        [ &short=fdatasync &desc="physically write output file data before finishing" ]
        [ &short=fsync &desc="likewise, but also write metadata" ]
        [ &short=append &desc="append mode (makes sense only for output; conv=notrunc suggested)" ]
        [ &short=direct &desc="use direct I/O for data" ]
        [ &short=directory &desc="fail unless a directory" ]
        [ &short=dsync &desc="use synchronized I/O for data" ]
        [ &short=sync &desc="likewise, but also for metadata" ]
        [ &short=fullblock &desc="accumulate full blocks of input (iflag only)" ]
        [ &short=nonblock &desc="use non-blocking I/O" ]
        [ &short=noatime &desc="do not update access time" ]
        [ &short=nocache &desc="Request to drop cache." ]
        [ &short=noctty &desc="do not assign controlling terminal from file" ]
        [ &short=nofollow &desc="do not follow symlinks" ]
        [ &short=count_bytes &desc="treat 'count=N' as a byte count (iflag only)" ]
        [ &short=skip_bytes &desc="treat 'skip=N' as a byte count (iflag only)" ]
        [ &short=seek_bytes &desc="treat 'seek=N' as a byte count (oflag only)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-df { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="include pseudo, duplicate, inaccessible file systems" ]
        [ &short=B &long=block-size &desc="scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units of 1,048,576 bytes; see SIZE format below" ]
        [ &short=h &long=human-readable &desc="print sizes in powers of 1024 (e.g., 1023M)" ]
        [ &short=H &long=si &desc="print sizes in powers of 1000 (e.g., 1.1G)" ]
        [ &short=i &long=inodes &desc="list inode information instead of block usage" ]
        [ &short=k &desc="like --block-size=1K" ]
        [ &short=l &long=local &desc="limit listing to local file systems" ]
        [ &long=no-sync &desc="do not invoke sync before getting usage info (default)" ]
        [ &long=output &desc="use the output format defined by FIELD_LIST, or print all fields if FIELD_LIST is omitted." ]
        [ &short=P &long=portability &desc="use the POSIX output format" ]
        [ &long=sync &desc="invoke sync before getting usage info" ]
        [ &long=total &desc="elide all entries insignificant to available space, and produce a grand total" ]
        [ &short=t &long=type &desc="limit listing to file systems of type TYPE" ]
        [ &short=T &long=print-type &desc="print file system type" ]
        [ &short=x &long=exclude-type &desc="limit listing to file systems not of type TYPE" ]
        [ &short=v &desc="(ignored)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-dir { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="do not ignore entries starting with ." ]
        [ &short=A &long=almost-all &desc="do not list implied . and .." ]
        [ &long=author &desc="with -l, print the author of each file" ]
        [ &short=b &long=escape &desc="print C-style escapes for nongraphic characters" ]
        [ &long=block-size &desc="with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below" ]
        [ &short=B &long=ignore-backups &desc="do not list implied entries ending with ~" ]
        [ &short=c &desc="with -lt: sort by, and show, ctime (time of last modification of file status information); with -l: show ctime and sort by name; otherwise: sort by ctime, newest first" ]
        [ &short=C &desc="list entries by columns" ]
        [ &long=color &desc="colorize the output; WHEN can be 'always' (default if omitted), 'auto', or 'never'; more info below" ]
        [ &short=d &long=directory &desc="list directories themselves, not their contents" ]
        [ &short=D &long=dired &desc="generate output designed for Emacs' dired mode" ]
        [ &short=f &desc="list all entries in directory order" ]
        [ &short=F &long=classify &desc="append indicator (one of */=>@|) to entries; WHEN can be 'always' (default if omitted), 'auto', or 'never'" ]
        [ &long=file-type &desc="likewise, except do not append '*'" ]
        [ &long=format &desc="across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C" ]
        [ &long=full-time &desc="like -l --time-style=full-iso" ]
        [ &short=g &desc="like -l, but do not list owner" ]
        [ &long=group-directories-first &desc="group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping" ]
        [ &short=G &long=no-group &desc="in a long listing, don't print group names" ]
        [ &short=h &long=human-readable &desc="with -l and -s, print sizes like 1K 234M 2G etc." ]
        [ &long=si &desc="likewise, but use powers of 1000 not 1024" ]
        [ &short=H &long=dereference-command-line &desc="follow symbolic links listed on the command line" ]
        [ &long=dereference-command-line-symlink-to-dir &desc="follow each command line symbolic link that points to a directory" ]
        [ &long=hide &desc="do not list implied entries matching shell PATTERN (overridden by -a or -A)" ]
        [ &long=hyperlink &desc="hyperlink file names; WHEN can be 'always' (default if omitted), 'auto', or 'never'" ]
        [ &long=indicator-style &desc="append indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), classify (-F)" ]
        [ &short=i &long=inode &desc="print the index number of each file" ]
        [ &short=I &long=ignore &desc="do not list implied entries matching shell PATTERN" ]
        [ &short=k &long=kibibytes &desc="default to 1024-byte blocks for file system usage; used only with -s and per directory totals" ]
        [ &short=l &desc="use a long listing format" ]
        [ &short=L &long=dereference &desc="when showing file information for a symbolic link, show information for the file the link references rather than for the link itself" ]
        [ &short=m &desc="fill width with a comma separated list of entries" ]
        [ &short=n &long=numeric-uid-gid &desc="like -l, but list numeric user and group IDs" ]
        [ &short=N &long=literal &desc="print entry names without quoting" ]
        [ &short=o &desc="like -l, but do not list group information" ]
        [ &short=p &long=indicator-style &desc="append / indicator to directories" ]
        [ &short=q &long=hide-control-chars &desc="print ? instead of nongraphic characters" ]
        [ &long=show-control-chars &desc="show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)" ]
        [ &short=Q &long=quote-name &desc="enclose entry names in double quotes" ]
        [ &long=quoting-style &desc="use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape (overrides QUOTING_STYLE environment variable)" ]
        [ &short=r &long=reverse &desc="reverse order while sorting" ]
        [ &short=R &long=recursive &desc="list subdirectories recursively" ]
        [ &short=s &long=size &desc="print the allocated size of each file, in blocks" ]
        [ &short=S &desc="sort by file size, largest first" ]
        [ &long=sort &desc="sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X), width" ]
        [ &long=time &desc="change the default of using modification times; access time (-u): atime, access, use; change time (-c): ctime, status; birth time: birth, creation; with -l, WORD determines which time to show; with --sort=time, sort by WORD (newest first)" ]
        [ &long=time-style &desc="time/date format with -l; see TIME_STYLE below" ]
        [ &short=t &desc="sort by time, newest first; see --time" ]
        [ &short=T &long=tabsize &desc="assume tab stops at each COLS instead of 8" ]
        [ &short=u &desc="with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first" ]
        [ &short=U &desc="do not sort; list entries in directory order" ]
        [ &short=v &desc="natural sort of (version) numbers within text" ]
        [ &short=w &long=width &desc="set output width to COLS." ]
        [ &short=x &desc="list entries by lines instead of by columns" ]
        [ &short=X &desc="sort alphabetically by entry extension" ]
        [ &short=Z &long=context &desc="print any security context of each file" ]
        [ &long=zero &desc="end each output line with NUL, not newline" ]
        [ &short=1 &desc="list one file per line" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-dircolors { |@args|
    var opt-specs = [
        [ &short=b &desc="output Bourne shell code to set LS_COLORS" ]
        [ &short=c &desc="output C shell code to set LS_COLORS" ]
        [ &short=p &long=print-database &desc="output defaults" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-dirname { |@args|
    var opt-specs = [
        [ &short=z &long=zero &desc="end each output line with NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-du { |@args|
    var opt-specs = [
        [ &short=0 &long=null &desc="end each output line with NUL, not newline" ]
        [ &short=a &long=all &desc="write counts for all files, not just directories" ]
        [ &long=apparent-size &desc="print apparent sizes rather than device usage; although the apparent size is usually smaller, it may be larger due to holes in ('sparse') files, internal fragmentation, indirect blocks, and the like" ]
        [ &short=B &long=block-size &desc="scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units of 1,048,576 bytes; see SIZE format below" ]
        [ &short=b &long=bytes &desc="equivalent to '--apparent-size --block-size=1'" ]
        [ &short=c &long=total &desc="produce a grand total" ]
        [ &short=D &long=dereference-args &desc="dereference only symlinks that are listed on the command line" ]
        [ &short=d &long=max-depth &desc="print the total for a directory (or file, with --all) only if it is N or fewer levels below the command line argument;" ]
        [ &long=files0-from &desc="summarize device usage of the NUL-terminated file names specified in file F; if F is -, then read names from standard input" ]
        [ &short=H &desc="equivalent to --dereference-args (-D)" ]
        [ &short=h &long=human-readable &desc="print sizes in human readable format (e.g., 1K 234M 2G)" ]
        [ &long=inodes &desc="list inode usage information instead of block usage" ]
        [ &short=k &desc="like --block-size=1K" ]
        [ &short=L &long=dereference &desc="dereference all symbolic links" ]
        [ &short=l &long=count-links &desc="count sizes many times if hard linked" ]
        [ &short=m &desc="like --block-size=1M" ]
        [ &short=P &long=no-dereference &desc="don't follow any symbolic links (this is the default)" ]
        [ &short=S &long=separate-dirs &desc="for directories do not include size of subdirectories" ]
        [ &long=si &desc="like -h, but use powers of 1000 not 1024" ]
        [ &short=s &long=summarize &desc="display only a total for each argument" ]
        [ &short=t &long=threshold &desc="exclude entries smaller than SIZE if positive, or entries greater than SIZE if negative" ]
        [ &long=time &desc="show time of the last modification of any file in the directory, or any of its subdirectories" ]
        [ &long=time &desc="show time as WORD instead of modification time: atime, access, use, ctime or status" ]
        [ &long=time-style &desc="show times using STYLE, which can be: full-iso, long-iso, iso, or +FORMAT; FORMAT is interpreted like in 'date'" ]
        [ &short=X &long=exclude-from &desc="exclude files that match any pattern in FILE" ]
        [ &long=exclude &desc="exclude files that match PATTERN" ]
        [ &short=x &long=one-file-system &desc="skip directories on different file systems" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-echo { |@args|
    var opt-specs = [
        [ &short=n &desc="do not output the trailing newline" ]
        [ &short=e &desc="enable interpretation of backslash escapes" ]
        [ &short=E &desc="disable interpretation of backslash escapes (default)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-env { |@args|
    var opt-specs = [
        [ &short=i &long=ignore-environment &desc="start with an empty environment" ]
        [ &short=0 &long=null &desc="end each output line with NUL, not newline" ]
        [ &short=u &long=unset &desc="remove variable from the environment" ]
        [ &short=C &long=chdir &desc="change working directory to DIR" ]
        [ &short=S &long=split-string &desc="process and split S into separate arguments; used to pass multiple arguments on shebang lines" ]
        [ &long=block-signal &desc="block delivery of SIG signal(s) to COMMAND" ]
        [ &long=default-signal &desc="reset handling of SIG signal(s) to the default" ]
        [ &long=ignore-signal &desc="set handling of SIG signal(s) to do nothing" ]
        [ &long=list-signal-handling &desc="list non default signal handling to stderr" ]
        [ &short=v &long=debug &desc="print verbose information for each processing step" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-expand { |@args|
    var opt-specs = [
        [ &short=i &long=initial &desc="do not convert tabs after non blanks" ]
        [ &short=t &long=tabs &desc="have tabs N characters apart, not 8" ]
        [ &short=t &long=tabs &desc="use comma separated list of tab positions. The last specified position can be prefixed with '/' to specify a tab size to use after the last explicitly specified tab stop." ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-expr { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-factor { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-false { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-fmt { |@args|
    var opt-specs = [
        [ &short=c &long=crown-margin &desc="preserve indentation of first two lines" ]
        [ &short=p &long=prefix &desc="reformat only lines beginning with STRING, reattaching the prefix to reformatted lines" ]
        [ &short=s &long=split-only &desc="split long lines, but do not refill" ]
        [ &short=t &long=tagged-paragraph &desc="indentation of first line different from second" ]
        [ &short=u &long=uniform-spacing &desc="one space between words, two after sentences" ]
        [ &short=w &long=width &desc="maximum line width (default of 75 columns)" ]
        [ &short=g &long=goal &desc="goal width (default of 93% of width)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-fold { |@args|
    var opt-specs = [
        [ &short=b &long=bytes &desc="count bytes rather than columns" ]
        [ &short=s &long=spaces &desc="break at spaces" ]
        [ &short=w &long=width &desc="use WIDTH columns instead of 80" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-head { |@args|
    var opt-specs = [
        [ &short=c &long=bytes &desc="print the first NUM bytes of each file; with the leading '-', print all but the last NUM bytes of each file" ]
        [ &short=n &long=lines &desc="print the first NUM lines instead of the first 10; with the leading '-', print all but the last NUM lines of each file" ]
        [ &short=q &desc="never print headers giving file names" ]
        [ &short=v &long=verbose &desc="always print headers giving file names" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-hostid { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-id { |@args|
    var opt-specs = [
        [ &short=a &desc="ignore, for compatibility with other versions" ]
        [ &short=Z &long=context &desc="print only the security context of the process" ]
        [ &short=g &long=group &desc="print only the effective group ID" ]
        [ &short=G &long=groups &desc="print all group IDs" ]
        [ &short=n &long=name &desc="print a name instead of a number, for -ugG" ]
        [ &short=r &long=real &desc="print the real ID instead of the effective ID, with -ugG" ]
        [ &short=u &long=user &desc="print only the effective user ID" ]
        [ &short=z &long=zero &desc="delimit entries with NUL characters, not whitespace; not permitted in default format" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-install { |@args|
    var opt-specs = [
        [ &long=backup &desc="make a backup of each existing destination file" ]
        [ &short=b &desc="like --backup but does not accept an argument" ]
        [ &short=c &desc="(ignored)" ]
        [ &short=C &long=compare &desc="compare each pair of source and destination files, and in some cases, do not modify the destination at all" ]
        [ &short=d &long=directory &desc="treat all arguments as directory names; create all components of the specified directories" ]
        [ &short=D &desc="create all leading components of DEST except the last, or all components of --target-directory, then copy SOURCE to DEST" ]
        [ &short=g &long=group &desc="set group ownership, instead of process' current group" ]
        [ &short=m &long=mode &desc="set permission mode (as in chmod), instead of rwxr-xr-x" ]
        [ &short=o &long=owner &desc="set ownership (super-user only)" ]
        [ &short=p &long=preserve-timestamps &desc="apply access/modification times of SOURCE files to corresponding destination files" ]
        [ &short=s &long=strip &desc="strip symbol tables" ]
        [ &long=strip-program &desc="program used to strip binaries" ]
        [ &short=S &long=suffix &desc="override the usual backup suffix" ]
        [ &short=t &long=target-directory &desc="copy all SOURCE arguments into DIRECTORY" ]
        [ &short=T &long=no-target-directory &desc="treat DEST as a normal file" ]
        [ &short=v &long=verbose &desc="print the name of each directory as it is created" ]
        [ &long=preserve-context &desc="preserve SELinux security context" ]
        [ &short=Z &desc="set SELinux security context of destination file and each created directory to default type" ]
        [ &long=context &desc="like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-join { |@args|
    var opt-specs = [
        [ &short=a &desc="also print unpairable lines from file FILENUM, where FILENUM is 1 or 2, corresponding to FILE1 or FILE2" ]
        [ &short=e &desc="replace missing input fields with EMPTY" ]
        [ &short=i &long=ignore-case &desc="ignore differences in case when comparing fields" ]
        [ &short=j &desc="equivalent to '-1 FIELD -2 FIELD'" ]
        [ &short=o &desc="obey FORMAT while constructing output line" ]
        [ &short=t &desc="use CHAR as input and output field separator" ]
        [ &short=v &desc="like -a FILENUM, but suppress joined output lines" ]
        [ &short=1 &desc="join on this FIELD of file 1" ]
        [ &short=2 &desc="join on this FIELD of file 2" ]
        [ &long=check-order &desc="check that the input is correctly sorted, even if all input lines are pairable" ]
        [ &long=nocheck-order &desc="do not check that the input is correctly sorted" ]
        [ &long=header &desc="treat the first line in each file as field headers, print them without trying to pair them" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-link { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-ln { |@args|
    var opt-specs = [
        [ &long=backup &desc="make a backup of each existing destination file" ]
        [ &short=b &desc="like --backup but does not accept an argument" ]
        [ &short=d &desc="allow the superuser to attempt to hard link directories (note: will probably fail due  system restrictions, even for the superuser)" ]
        [ &short=f &long=force &desc="remove existing destination files" ]
        [ &short=i &long=interactive &desc="prompt whether to remove destinations" ]
        [ &short=L &long=logical &desc="dereference TARGETs that are symbolic links" ]
        [ &short=n &long=no-dereference &desc="treat LINK_NAME as a normal file if it is a symbolic link to a directory" ]
        [ &short=P &long=physical &desc="make hard links directly to symbolic links" ]
        [ &short=r &long=relative &desc="with -s, create links relative to link location" ]
        [ &short=s &long=symbolic &desc="make symbolic links instead of hard links" ]
        [ &short=S &long=suffix &desc="override the usual backup suffix" ]
        [ &short=t &long=target-directory &desc="specify the DIRECTORY in which to create the links" ]
        [ &short=T &long=no-target-directory &desc="treat LINK_NAME as a normal file always" ]
        [ &short=v &long=verbose &desc="print name of each linked file" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-logname { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-ls { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="do not ignore entries starting with ." ]
        [ &short=A &long=almost-all &desc="do not list implied . and .." ]
        [ &long=author &desc="with -l, print the author of each file" ]
        [ &short=b &long=escape &desc="print C-style escapes for nongraphic characters" ]
        [ &long=block-size &desc="with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below" ]
        [ &short=B &long=ignore-backups &desc="do not list implied entries ending with ~" ]
        [ &short=c &desc="with -lt: sort by, and show, ctime (time of last modification of file status information); with -l: show ctime and sort by name; otherwise: sort by ctime, newest first" ]
        [ &short=C &desc="list entries by columns" ]
        [ &long=color &desc="colorize the output; WHEN can be 'always' (default if omitted), 'auto', or 'never'; more info below" ]
        [ &short=d &long=directory &desc="list directories themselves, not their contents" ]
        [ &short=D &long=dired &desc="generate output designed for Emacs' dired mode" ]
        [ &short=f &desc="list all entries in directory order" ]
        [ &short=F &long=classify &desc="append indicator (one of */=>@|) to entries; WHEN can be 'always' (default if omitted), 'auto', or 'never'" ]
        [ &long=file-type &desc="likewise, except do not append '*'" ]
        [ &long=format &desc="across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C" ]
        [ &long=full-time &desc="like -l --time-style=full-iso" ]
        [ &short=g &desc="like -l, but do not list owner" ]
        [ &long=group-directories-first &desc="group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping" ]
        [ &short=G &long=no-group &desc="in a long listing, don't print group names" ]
        [ &short=h &long=human-readable &desc="with -l and -s, print sizes like 1K 234M 2G etc." ]
        [ &long=si &desc="likewise, but use powers of 1000 not 1024" ]
        [ &short=H &long=dereference-command-line &desc="follow symbolic links listed on the command line" ]
        [ &long=dereference-command-line-symlink-to-dir &desc="follow each command line symbolic link that points to a directory" ]
        [ &long=hide &desc="do not list implied entries matching shell PATTERN (overridden by -a or -A)" ]
        [ &long=hyperlink &desc="hyperlink file names; WHEN can be 'always' (default if omitted), 'auto', or 'never'" ]
        [ &long=indicator-style &desc="append indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), classify (-F)" ]
        [ &short=i &long=inode &desc="print the index number of each file" ]
        [ &short=I &long=ignore &desc="do not list implied entries matching shell PATTERN" ]
        [ &short=k &long=kibibytes &desc="default to 1024-byte blocks for file system usage; used only with -s and per directory totals" ]
        [ &short=l &desc="use a long listing format" ]
        [ &short=L &long=dereference &desc="when showing file information for a symbolic link, show information for the file the link references rather than for the link itself" ]
        [ &short=m &desc="fill width with a comma separated list of entries" ]
        [ &short=n &long=numeric-uid-gid &desc="like -l, but list numeric user and group IDs" ]
        [ &short=N &long=literal &desc="print entry names without quoting" ]
        [ &short=o &desc="like -l, but do not list group information" ]
        [ &short=p &long=indicator-style &desc="append / indicator to directories" ]
        [ &short=q &long=hide-control-chars &desc="print ? instead of nongraphic characters" ]
        [ &long=show-control-chars &desc="show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)" ]
        [ &short=Q &long=quote-name &desc="enclose entry names in double quotes" ]
        [ &long=quoting-style &desc="use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape (overrides QUOTING_STYLE environment variable)" ]
        [ &short=r &long=reverse &desc="reverse order while sorting" ]
        [ &short=R &long=recursive &desc="list subdirectories recursively" ]
        [ &short=s &long=size &desc="print the allocated size of each file, in blocks" ]
        [ &short=S &desc="sort by file size, largest first" ]
        [ &long=sort &desc="sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X), width" ]
        [ &long=time &desc="change the default of using modification times; access time (-u): atime, access, use; change time (-c): ctime, status; birth time: birth, creation; with -l, WORD determines which time to show; with --sort=time, sort by WORD (newest first)" ]
        [ &long=time-style &desc="time/date format with -l; see TIME_STYLE below" ]
        [ &short=t &desc="sort by time, newest first; see --time" ]
        [ &short=T &long=tabsize &desc="assume tab stops at each COLS instead of 8" ]
        [ &short=u &desc="with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first" ]
        [ &short=U &desc="do not sort; list entries in directory order" ]
        [ &short=v &desc="natural sort of (version) numbers within text" ]
        [ &short=w &long=width &desc="set output width to COLS." ]
        [ &short=x &desc="list entries by lines instead of by columns" ]
        [ &short=X &desc="sort alphabetically by entry extension" ]
        [ &short=Z &long=context &desc="print any security context of each file" ]
        [ &long=zero &desc="end each output line with NUL, not newline" ]
        [ &short=1 &desc="list one file per line" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-md5sum { |@args|
    var opt-specs = [
        [ &short=b &long=binary &desc="read in binary mode" ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &long=tag &desc="create a BSD-style checksum" ]
        [ &short=t &long=text &desc="read in text mode (default)" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-mkdir { |@args|
    var opt-specs = [
        [ &short=m &long=mode &desc="set file mode (as in chmod), not a=rwx - umask" ]
        [ &short=p &long=parents &desc="no error if existing, make parent directories as needed, with their file modes unaffected by any -m option." ]
        [ &short=v &long=verbose &desc="print a message for each created directory" ]
        [ &short=Z &desc="set SELinux security context of each created directory to the default type" ]
        [ &long=context &desc="like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-mkfifo { |@args|
    var opt-specs = [
        [ &short=m &long=mode &desc="set file permission bits to MODE, not a=rw - umask" ]
        [ &short=Z &desc="set the SELinux security context to default type" ]
        [ &long=context &desc="like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-mknod { |@args|
    var opt-specs = [
        [ &short=m &long=mode &desc="set file permission bits to MODE, not a=rw - umask" ]
        [ &short=Z &desc="set the SELinux security context to default type" ]
        [ &long=context &desc="like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-mktemp { |@args|
    var opt-specs = [
        [ &short=d &long=directory &desc="create a directory, not a file" ]
        [ &short=u &long=dry-run &desc="do not create anything; merely print a name (unsafe)" ]
        [ &short=q &long=quiet &desc="suppress diagnostics about file/dir-creation failure" ]
        [ &long=suffix &desc="append SUFF to TEMPLATE; SUFF must not contain a slash. This option is implied if TEMPLATE does not end in X" ]
        [ &short=p &long=tmpdir &desc="interpret TEMPLATE relative to DIR; if DIR is not specified, use $TMPDIR if set, else /tmp." ]
        [ &short=t &desc="interpret TEMPLATE as a single file name component, relative to a directory: $TMPDIR, if set; else the directory specified via -p; else /tmp [deprecated]" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-mv { |@args|
    var opt-specs = [
        [ &long=backup &desc="make a backup of each existing destination file" ]
        [ &short=b &desc="like --backup but does not accept an argument" ]
        [ &short=f &long=force &desc="do not prompt before overwriting" ]
        [ &short=i &long=interactive &desc="prompt before overwrite" ]
        [ &short=n &long=no-clobber &desc="do not overwrite an existing file" ]
        [ &long=strip-trailing-slashes &desc="remove any trailing slashes from each SOURCE argument" ]
        [ &short=S &long=suffix &desc="override the usual backup suffix" ]
        [ &short=t &long=target-directory &desc="move all SOURCE arguments into DIRECTORY" ]
        [ &short=T &long=no-target-directory &desc="treat DEST as a normal file" ]
        [ &short=u &long=update &desc="move only when the SOURCE file is newer than the destination file or when the destination file is missing" ]
        [ &short=v &long=verbose &desc="explain what is being done" ]
        [ &short=Z &long=context &desc="set SELinux security context of destination file to default type" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-nice { |@args|
    var opt-specs = [
        [ &short=n &long=adjustment &desc="add integer N to the niceness (default 10)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-nl { |@args|
    var opt-specs = [
        [ &short=b &long=body-numbering &desc="use STYLE for numbering body lines" ]
        [ &short=d &long=section-delimiter &desc="use CC for logical page delimiters" ]
        [ &short=f &long=footer-numbering &desc="use STYLE for numbering footer lines" ]
        [ &short=h &long=header-numbering &desc="use STYLE for numbering header lines" ]
        [ &short=i &long=line-increment &desc="line number increment at each line" ]
        [ &short=l &long=join-blank-lines &desc="group of NUMBER empty lines counted as one" ]
        [ &short=n &long=number-format &desc="insert line numbers according to FORMAT" ]
        [ &short=p &long=no-renumber &desc="do not reset line numbers for each section" ]
        [ &short=s &long=number-separator &desc="add STRING after (possible) line number" ]
        [ &short=v &long=starting-line-number &desc="first line number for each section" ]
        [ &short=w &long=number-width &desc="use NUMBER columns for line numbers" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-nohup { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-nproc { |@args|
    var opt-specs = [
        [ &long=all &desc="print the number of installed processors" ]
        [ &long=ignore &desc="if possible, exclude N processing units" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-numfmt { |@args|
    var opt-specs = [
        [ &long=debug &desc="print warnings about invalid input" ]
        [ &short=d &long=delimiter &desc="use X instead of whitespace for field delimiter" ]
        [ &long=field &desc="replace the numbers in these input fields (default=1); see FIELDS below" ]
        [ &long=format &desc="use printf style floating-point FORMAT; see FORMAT below for details" ]
        [ &long=from &desc="auto-scale input numbers to UNITs; default is 'none'; see UNIT below" ]
        [ &long=from-unit &desc="specify the input unit size (instead of the default 1)" ]
        [ &long=grouping &desc="use locale-defined grouping of digits, e.g. 1,000,000 (which means it has no effect in the C/POSIX locale)" ]
        [ &long=header &desc="print (without converting) the first N header lines; N defaults to 1 if not specified" ]
        [ &long=invalid &desc="failure mode for invalid numbers: MODE can be: abort (default), fail, warn, ignore" ]
        [ &long=padding &desc="pad the output to N characters; positive N will right-align; negative N will left-align; padding is ignored if the output is wider than N; the default is to automatically pad if a whitespace is found" ]
        [ &long=round &desc="use METHOD for rounding when scaling; METHOD can be: up, down, from-zero (default), towards-zero, nearest" ]
        [ &long=suffix &desc="add SUFFIX to output numbers, and accept optional SUFFIX in input numbers" ]
        [ &long=to &desc="auto-scale output numbers to UNITs; see UNIT below" ]
        [ &long=to-unit &desc="the output unit size (instead of the default 1)" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-od { |@args|
    var opt-specs = [
        [ &short=A &long=address-radix &desc="output format for file offsets; RADIX is one of [doxn], for Decimal, Octal, Hex or None" ]
        [ &long=endian &desc="swap input bytes according the specified order" ]
        [ &short=j &long=skip-bytes &desc="skip BYTES input bytes first" ]
        [ &short=N &long=read-bytes &desc="limit dump to BYTES input bytes" ]
        [ &short=S &long=strings &desc="output strings of at least BYTES graphic chars; 3 is implied when BYTES is not specified" ]
        [ &short=t &long=format &desc="select output format or formats" ]
        [ &short=v &long=output-duplicates &desc="do not use * to mark line suppression" ]
        [ &short=w &long=width &desc="output BYTES bytes per output line; 32 is implied when BYTES is not specified" ]
        [ &long=traditional &desc="accept arguments in third form above" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
        [ &short=a &desc="same as -t a" ]
        [ &short=b &desc="same as -t o1, select octal bytes" ]
        [ &short=c &desc="same as -t c" ]
        [ &short=d &desc="same as -t u2, select unsigned decimal 2-byte units" ]
        [ &short=f &desc="same as -t fF, select floats" ]
        [ &short=i &desc="same as -t dI, select decimal ints" ]
        [ &short=l &desc="same as -t dL, select decimal longs" ]
        [ &short=o &desc="same as -t o2, select octal 2-byte units" ]
        [ &short=s &desc="same as -t d2, select decimal 2-byte units" ]
        [ &short=x &desc="same as -t x2, select hexadecimal 2-byte units" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-paste { |@args|
    var opt-specs = [
        [ &short=d &long=delimiters &desc="reuse characters from LIST instead of TABs" ]
        [ &short=s &long=serial &desc="paste one file at a time instead of in parallel" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-pathchk { |@args|
    var opt-specs = [
        [ &short=p &desc="check for most POSIX systems" ]
        [ &short=P &desc="check for empty names and leading \"-\"" ]
        [ &long=portability &desc="check for all POSIX systems (equivalent to -p -P)" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-pinky { |@args|
    var opt-specs = [
        [ &short=l &desc="produce long format output for the specified USERs" ]
        [ &short=b &desc="omit the user's home directory and shell in long format" ]
        [ &short=h &desc="omit the user's project file in long format" ]
        [ &short=p &desc="omit the user's plan file in long format" ]
        [ &short=s &desc="do short format output, this is the default" ]
        [ &short=f &desc="omit the line of column headings in short format" ]
        [ &short=w &desc="omit the user's full name in short format" ]
        [ &short=i &desc="omit the user's full name and remote host in short format" ]
        [ &short=q &desc="omit the user's full name, remote host and idle time in short format" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-pr { |@args|
    var opt-specs = [
        [ &short=+FIRST_PAGE &long=pages &desc="begin [stop] printing with page FIRST_[LAST_]PAGE" ]
        [ &short=COLUMN &long=columns &desc="output COLUMN columns and print columns down, unless -a is used. Balance number of lines in the columns on each page" ]
        [ &short=a &long=across &desc="print columns across rather than down, used together with -COLUMN" ]
        [ &short=c &long=show-control-chars &desc="use hat notation (^G) and octal backslash notation" ]
        [ &short=d &long=double-space &desc="double space the output" ]
        [ &short=D &long=date-format &desc="use FORMAT for the header date" ]
        [ &short=e &long=expand-tabs &desc="expand input CHARs (TABs) to tab WIDTH (8)" ]
        [ &short=F &desc="use form feeds instead of newlines to separate pages (by a 3-line page header with -F or a 5-line header and trailer without -F)" ]
        [ &short=h &long=header &desc="use a centered HEADER instead of filename in page header, -h \"\" prints a blank line, don't use -h\"\"" ]
        [ &short=i &long=output-tabs &desc="replace spaces with CHARs (TABs) to tab WIDTH (8)" ]
        [ &short=J &long=join-lines &desc="merge full lines, turns off -W line truncation, no column alignment, --sep-string[=STRING] sets separators" ]
        [ &short=l &long=length &desc="set the page length to PAGE_LENGTH (66) lines (default number of lines of text 56, and with -F 63). implies -t if PAGE_LENGTH <= 10" ]
        [ &short=m &long=merge &desc="print all files in parallel, one in each column, truncate lines, but join lines of full length with -J" ]
        [ &short=n &long=number-lines &desc="number lines, use DIGITS (5) digits, then SEP (TAB), default counting starts with 1st line of input file" ]
        [ &short=N &long=first-line-number &desc="start counting with NUMBER at 1st line of first page printed (see +FIRST_PAGE)" ]
        [ &short=o &long=indent &desc="offset each line with MARGIN (zero) spaces, do not affect -w or -W, MARGIN will be added to PAGE_WIDTH" ]
        [ &short=r &long=no-file-warnings &desc="omit warning when a file cannot be opened" ]
        [ &short=s &long=separator &desc="separate columns by a single character, default for CHAR is the <TAB> character without -w and 'no char' with -w. -s[CHAR] turns off line truncation of all 3 column options (-COLUMN|-a -COLUMN|-m) except -w is set" ]
        [ &short=S &long=sep-string &desc="separate columns by STRING, without -S: Default separator <TAB> with -J and <space> otherwise (same as -S\" \"), no effect on column options" ]
        [ &short=t &long=omit-header &desc="omit page headers and trailers; implied if PAGE_LENGTH <= 10" ]
        [ &short=T &long=omit-pagination &desc="omit page headers and trailers, eliminate any pagination by form feeds set in input files" ]
        [ &short=v &long=show-nonprinting &desc="use octal backslash notation" ]
        [ &short=w &long=width &desc="set page width to PAGE_WIDTH (72) characters for multiple text-column output only, -s[char] turns off (72)" ]
        [ &short=W &long=page-width &desc="set page width to PAGE_WIDTH (72) characters always, truncate lines, except -J option is set, no interference with -S or -s" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-printenv { |@args|
    var opt-specs = [
        [ &short=0 &long=null &desc="end each output line with NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-printf { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-ptx { |@args|
    var opt-specs = [
        [ &short=A &long=auto-reference &desc="output automatically generated references" ]
        [ &short=G &long=traditional &desc="behave more like System V 'ptx'" ]
        [ &short=F &long=flag-truncation &desc="use STRING for flagging line truncations. The default is '/'" ]
        [ &short=M &long=macro-name &desc="macro name to use instead of 'xx'" ]
        [ &short=O &long=format &desc="generate output as roff directives" ]
        [ &short=R &long=right-side-refs &desc="put references at right, not counted in -w" ]
        [ &short=S &long=sentence-regexp &desc="for end of lines or end of sentences" ]
        [ &short=T &long=format &desc="generate output as TeX directives" ]
        [ &short=W &long=word-regexp &desc="use REGEXP to match each keyword" ]
        [ &short=b &long=break-file &desc="word break characters in this FILE" ]
        [ &short=f &long=ignore-case &desc="fold lower case to upper case for sorting" ]
        [ &short=g &long=gap-size &desc="gap size in columns between output fields" ]
        [ &short=i &long=ignore-file &desc="read ignore word list from FILE" ]
        [ &short=o &long=only-file &desc="read only word list from this FILE" ]
        [ &short=r &long=references &desc="first field of each line is a reference" ]
        [ &short=t &long=typeset-mode &desc="- not implemented -" ]
        [ &short=w &long=width &desc="output width in columns, reference excluded" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-pwd { |@args|
    var opt-specs = [
        [ &short=L &long=logical &desc="use PWD from environment, even if it contains symlinks" ]
        [ &short=P &long=physical &desc="avoid all symlinks" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-readlink { |@args|
    var opt-specs = [
        [ &short=f &long=canonicalize &desc="canonicalize by following every symlink in every component of the given name recursively; all but the last component must exist" ]
        [ &short=e &long=canonicalize-existing &desc="canonicalize by following every symlink in every component of the given name recursively, all components must exist" ]
        [ &short=m &long=canonicalize-missing &desc="canonicalize by following every symlink in every component of the given name without requirements on components existence" ]
        [ &short=n &long=no-newline &desc="do not output the trailing delimiter" ]
        [ &short=q &desc="suppress most error messages (on by default)" ]
        [ &short=v &long=verbose &desc="report error messages" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-realpath { |@args|
    var opt-specs = [
        [ &short=e &long=canonicalize-existing &desc="all components of the path must exist" ]
        [ &short=m &long=canonicalize-missing &desc="no path components need exist or be a directory" ]
        [ &short=L &long=logical &desc="resolve '..' components before symlinks" ]
        [ &short=P &long=physical &desc="resolve symlinks as encountered (default)" ]
        [ &short=q &long=quiet &desc="suppress most error messages" ]
        [ &long=relative-to &desc="print the resolved path relative to DIR" ]
        [ &long=relative-base &desc="print absolute paths unless paths below DIR" ]
        [ &short=s &desc="don't expand symlinks" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-rm { |@args|
    var opt-specs = [
        [ &short=f &long=force &desc="ignore nonexistent files and arguments, never prompt" ]
        [ &short=i &desc="prompt before every removal" ]
        [ &short=I &desc="prompt once before removing more than three files, or when removing recursively; less intrusive than -i, while still giving protection against most mistakes" ]
        [ &long=interactive &desc="prompt according to WHEN: never, once (-I), or always (-i); without WHEN, prompt always" ]
        [ &long=one-file-system &desc="when removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument" ]
        [ &long=no-preserve-root &desc="do not treat '/' specially" ]
        [ &long=preserve-root &desc="do not remove '/' (default); with 'all', reject any command line argument on a separate device from its parent" ]
        [ &short=r &desc="remove directories and their contents recursively" ]
        [ &short=d &long=dir &desc="remove empty directories" ]
        [ &short=v &long=verbose &desc="explain what is being done" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-rmdir { |@args|
    var opt-specs = [
        [ &long=ignore-fail-on-non-empty &desc="ignore each failure that is solely because a directory is non-empty" ]
        [ &short=p &long=parents &desc="remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is similar to 'rmdir a/b/c a/b a'" ]
        [ &short=v &long=verbose &desc="output a diagnostic for every directory processed" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-runcon { |@args|
    var opt-specs = [
        [ &short=CONTEXT &desc="Complete security context" ]
        [ &short=c &long=compute &desc="compute process transition context before modifying" ]
        [ &short=t &long=type &desc="type (for same role as parent)" ]
        [ &short=u &long=user &desc="user identity" ]
        [ &short=r &long=role &desc="role" ]
        [ &short=l &long=range &desc="levelrange" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-seq { |@args|
    var opt-specs = [
        [ &short=f &long=format &desc="use printf style floating-point FORMAT" ]
        [ &short=s &long=separator &desc="use STRING to separate numbers (default: \\n)" ]
        [ &short=w &long=equal-width &desc="equalize width by padding with leading zeroes" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sha1sum { |@args|
    var opt-specs = [
        [ &short=b &long=binary &desc="read in binary mode" ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &long=tag &desc="create a BSD-style checksum" ]
        [ &short=t &long=text &desc="read in text mode (default)" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sha224sum { |@args|
    var opt-specs = [
        [ &short=b &long=binary &desc="read in binary mode" ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &long=tag &desc="create a BSD-style checksum" ]
        [ &short=t &long=text &desc="read in text mode (default)" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sha256sum { |@args|
    var opt-specs = [
        [ &short=b &long=binary &desc="read in binary mode" ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &long=tag &desc="create a BSD-style checksum" ]
        [ &short=t &long=text &desc="read in text mode (default)" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sha384sum { |@args|
    var opt-specs = [
        [ &short=b &long=binary &desc="read in binary mode" ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &long=tag &desc="create a BSD-style checksum" ]
        [ &short=t &long=text &desc="read in text mode (default)" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sha512sum { |@args|
    var opt-specs = [
        [ &short=b &long=binary &desc="read in binary mode" ]
        [ &short=c &long=check &desc="read checksums from the FILEs and check them" ]
        [ &long=tag &desc="create a BSD-style checksum" ]
        [ &short=t &long=text &desc="read in text mode (default)" ]
        [ &short=z &long=zero &desc="end each output line with NUL, not newline, and disable file name escaping" ]
        [ &long=ignore-missing &desc="don't fail or report status for missing files" ]
        [ &long=quiet &desc="don't print OK for each successfully verified file" ]
        [ &long=status &desc="don't output anything, status code shows success" ]
        [ &long=strict &desc="exit non-zero for improperly formatted checksum lines" ]
        [ &short=w &long=warn &desc="warn about improperly formatted checksum lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-shred { |@args|
    var opt-specs = [
        [ &short=f &long=force &desc="change permissions to allow writing if necessary" ]
        [ &short=n &long=iterations &desc="overwrite N times instead of the default (3)" ]
        [ &long=random-source &desc="get random bytes from FILE" ]
        [ &short=s &long=size &desc="shred this many bytes (suffixes like K, M, G accepted)" ]
        [ &short=u &desc="deallocate and remove file after overwriting" ]
        [ &long=remove &desc="like -u but give control on HOW to delete;" ]
        [ &short=v &long=verbose &desc="show progress" ]
        [ &short=x &long=exact &desc="do not round file sizes up to the next full block; this is the default for non-regular files" ]
        [ &short=z &long=zero &desc="add a final overwrite with zeros to hide shredding" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-shuf { |@args|
    var opt-specs = [
        [ &short=e &long=echo &desc="treat each ARG as an input line" ]
        [ &short=i &long=input-range &desc="treat each number LO through HI as an input line" ]
        [ &short=n &long=head-count &desc="output at most COUNT lines" ]
        [ &short=o &long=output &desc="write result to FILE instead of standard output" ]
        [ &long=random-source &desc="get random bytes from FILE" ]
        [ &short=r &long=repeat &desc="output lines can be repeated" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sleep { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sort { |@args|
    var opt-specs = [
        [ &short=b &long=ignore-leading-blanks &desc="ignore leading blanks" ]
        [ &short=d &long=dictionary-order &desc="consider only blanks and alphanumeric characters" ]
        [ &short=f &long=ignore-case &desc="fold lower case to upper case characters" ]
        [ &short=g &long=general-numeric-sort &desc="compare according to general numerical value" ]
        [ &short=i &long=ignore-nonprinting &desc="consider only printable characters" ]
        [ &short=M &long=month-sort &desc="compare (unknown) < 'JAN' < ... < 'DEC'" ]
        [ &short=h &long=human-numeric-sort &desc="compare human readable numbers (e.g., 2K 1G)" ]
        [ &short=n &long=numeric-sort &desc="compare according to string numerical value" ]
        [ &short=R &long=random-sort &desc="shuffle, but group identical keys." ]
        [ &long=random-source &desc="get random bytes from FILE" ]
        [ &short=r &long=reverse &desc="reverse the result of comparisons" ]
        [ &long=sort &desc="sort according to WORD: general-numeric -g, human-numeric -h, month -M, numeric -n, random -R, version -V" ]
        [ &short=V &long=version-sort &desc="natural sort of (version) numbers within text" ]
        [ &long=batch-size &desc="merge at most NMERGE inputs at once; for more use temp files" ]
        [ &short=c &desc="check for sorted input; do not sort" ]
        [ &short=C &desc="like -c, but do not report first bad line" ]
        [ &long=compress-program &desc="compress temporaries with PROG; decompress them with PROG -d" ]
        [ &long=debug &desc="annotate the part of the line used to sort, and warn about questionable usage to stderr" ]
        [ &long=files0-from &desc="read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input" ]
        [ &short=k &long=key &desc="sort via a key; KEYDEF gives location and type" ]
        [ &short=m &long=merge &desc="merge already sorted files; do not sort" ]
        [ &short=o &long=output &desc="write result to FILE instead of standard output" ]
        [ &short=s &long=stable &desc="stabilize sort by disabling last-resort comparison" ]
        [ &short=S &long=buffer-size &desc="use SIZE for main memory buffer" ]
        [ &short=t &long=field-separator &desc="use SEP instead of non-blank to blank transition" ]
        [ &short=T &long=temporary-directory &desc="use DIR for temporaries, not $TMPDIR or /tmp; multiple options specify multiple directories" ]
        [ &long=parallel &desc="change the number of sorts run concurrently to N" ]
        [ &short=u &long=unique &desc="with -c, check for strict ordering; without -c, output only the first of an equal run" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-split { |@args|
    var opt-specs = [
        [ &short=a &long=suffix-length &desc="generate suffixes of length N (default 2)" ]
        [ &long=additional-suffix &desc="append an additional SUFFIX to file names" ]
        [ &short=b &long=bytes &desc="put SIZE bytes per output file" ]
        [ &short=C &long=line-bytes &desc="put at most SIZE bytes of records per output file" ]
        [ &short=d &desc="use numeric suffixes starting at 0, not alphabetic" ]
        [ &long=numeric-suffixes &desc="same as -d, but allow setting the start value" ]
        [ &short=x &desc="use hex suffixes starting at 0, not alphabetic" ]
        [ &long=hex-suffixes &desc="same as -x, but allow setting the start value" ]
        [ &short=e &long=elide-empty-files &desc="do not generate empty output files with '-n'" ]
        [ &long=filter &desc="write to shell COMMAND; file name is $FILE" ]
        [ &short=l &long=lines &desc="put NUMBER lines/records per output file" ]
        [ &short=n &long=number &desc="generate CHUNKS output files; see explanation below" ]
        [ &short=t &long=separator &desc="use SEP instead of newline as the record separator; '\\0' (zero) specifies the NUL character" ]
        [ &short=u &long=unbuffered &desc="immediately copy input to output with '-n r/...'" ]
        [ &long=verbose &desc="print a diagnostic just before each output file is opened" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-stat { |@args|
    var opt-specs = [
        [ &short=L &long=dereference &desc="follow links" ]
        [ &short=f &long=file-system &desc="display file system status instead of file status" ]
        [ &long=cached &desc="specify how to use cached attributes; useful on remote file systems. See MODE below" ]
        [ &short=c &desc="--format=FORMAT" ]
        [ &long=printf &desc="like --format, but interpret backslash escapes, and do not output a mandatory trailing newline; if you want a newline, include \\n in FORMAT" ]
        [ &short=t &long=terse &desc="print the information in terse form" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-stdbuf { |@args|
    var opt-specs = [
        [ &short=i &long=input &desc="adjust standard input stream buffering" ]
        [ &short=o &long=output &desc="adjust standard output stream buffering" ]
        [ &short=e &long=error &desc="adjust standard error stream buffering" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-stty { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="print all current settings in human-readable form" ]
        [ &short=g &long=save &desc="print all current settings in a stty-readable form" ]
        [ &short=F &long=file &desc="open and use the specified DEVICE instead of stdin" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sum { |@args|
    var opt-specs = [
        [ &short=r &desc="use BSD sum algorithm (the default), use 1K blocks" ]
        [ &short=s &long=sysv &desc="use System V sum algorithm, use 512 bytes blocks" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-sync { |@args|
    var opt-specs = [
        [ &short=d &long=data &desc="sync only file data, no unneeded metadata" ]
        [ &short=f &long=file-system &desc="sync the file systems that contain the files" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-tac { |@args|
    var opt-specs = [
        [ &short=b &long=before &desc="attach the separator before instead of after" ]
        [ &short=r &long=regex &desc="interpret the separator as a regular expression" ]
        [ &short=s &long=separator &desc="use STRING as the separator instead of newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-tail { |@args|
    var opt-specs = [
        [ &short=c &long=bytes &desc="output the last NUM bytes; or use -c +NUM to output starting with byte NUM of each file" ]
        [ &short=f &long=follow &desc="output appended data as the file grows; an absent option argument means 'descriptor'" ]
        [ &short=F &desc="same as --follow=name --retry" ]
        [ &short=n &long=lines &desc="output the last NUM lines, instead of the last 10; or use -n +NUM to output starting with line NUM" ]
        [ &long=max-unchanged-stats &desc="with --follow=name, reopen a FILE which has not changed size after N (default 5) iterations to see if it has been unlinked or renamed (this is the usual case of rotated log files); with inotify, this option is rarely useful" ]
        [ &long=pid &desc="with -f, terminate after process ID, PID dies" ]
        [ &short=q &desc="never output headers giving file names" ]
        [ &long=retry &desc="keep trying to open a file if it is inaccessible" ]
        [ &short=s &long=sleep-interval &desc="with -f, sleep for approximately N seconds (default 1.0) between iterations; with inotify and --pid=P, check process P at least once every N seconds" ]
        [ &short=v &long=verbose &desc="always output headers giving file names" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-tee { |@args|
    var opt-specs = [
        [ &short=a &long=append &desc="append to the given FILEs, do not overwrite" ]
        [ &short=i &long=ignore-interrupts &desc="ignore interrupt signals" ]
        [ &short=p &desc="diagnose errors writing to non pipes" ]
        [ &long=output-error &desc="set behavior on write error." ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-test { |@args|
    var opt-specs = [
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-timeout { |@args|
    var opt-specs = [
        [ &long=preserve-status &desc="exit with the same status as COMMAND, even when the command times out" ]
        [ &long=foreground &desc="when not running timeout directly from a shell prompt, allow COMMAND to read from the TTY and get TTY signals; in this mode, children of COMMAND will not be timed out" ]
        [ &short=k &long=kill-after &desc="also send a KILL signal if COMMAND is still running this long after the initial signal was sent" ]
        [ &short=s &long=signal &desc="specify the signal to be sent on timeout; SIGNAL may be a name like 'HUP' or a number; see 'kill -l' for a list of signals" ]
        [ &short=v &long=verbose &desc="diagnose to stderr any signal sent upon timeout" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-touch { |@args|
    var opt-specs = [
        [ &short=a &desc="change only the access time" ]
        [ &short=c &long=no-create &desc="do not create any files" ]
        [ &short=d &long=date &desc="parse STRING and use it instead of current time" ]
        [ &short=f &desc="(ignored)" ]
        [ &short=h &long=no-dereference &desc="affect each symbolic link instead of any referenced file (useful only on systems that can change  timestamps of a symlink)" ]
        [ &short=m &desc="change only the modification time" ]
        [ &short=r &long=reference &desc="use this file's times instead of current time" ]
        [ &short=t &desc="use [[CC]YY]MMDDhhmm[.ss] instead of current time" ]
        [ &long=time &desc="change the specified time: WORD is access, atime, or use: equivalent to -a WORD is modify or mtime: equivalent to -m" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-tr { |@args|
    var opt-specs = [
        [ &short=c &desc="use the complement of SET1" ]
        [ &short=d &long=delete &desc="delete characters in SET1, do not translate" ]
        [ &short=s &long=squeeze-repeats &desc="replace each sequence of a repeated character that is listed in the last specified SET, with a single occurrence of that character" ]
        [ &short=t &long=truncate-set1 &desc="first truncate SET1 to length of SET2" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-true { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-truncate { |@args|
    var opt-specs = [
        [ &short=c &long=no-create &desc="do not create any files" ]
        [ &short=o &long=io-blocks &desc="treat SIZE as number of IO blocks instead of bytes" ]
        [ &short=r &long=reference &desc="base size on RFILE" ]
        [ &short=s &long=size &desc="set or adjust the file size by SIZE bytes" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-tsort { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-tty { |@args|
    var opt-specs = [
        [ &short=s &desc="print nothing, only return an exit status" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-uname { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="print all information, in the following order, except omit -p and -i if unknown:" ]
        [ &short=s &long=kernel-name &desc="print the kernel name" ]
        [ &short=n &long=nodename &desc="print the network node hostname" ]
        [ &short=r &long=kernel-release &desc="print the kernel release" ]
        [ &short=v &long=kernel-version &desc="print the kernel version" ]
        [ &short=m &long=machine &desc="print the machine hardware name" ]
        [ &short=p &long=processor &desc="print the processor type (non-portable)" ]
        [ &short=i &long=hardware-platform &desc="print the hardware platform (non-portable)" ]
        [ &short=o &long=operating-system &desc="print the operating system" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-unexpand { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="convert all blanks, instead of just initial blanks" ]
        [ &long=first-only &desc="convert only leading sequences of blanks (overrides -a)" ]
        [ &short=t &long=tabs &desc="have tabs N characters apart instead of 8 (enables -a)" ]
        [ &short=t &long=tabs &desc="use comma separated list of tab positions. The last specified position can be prefixed with '/' to specify a tab size to use after the last explicitly specified tab stop." ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-uniq { |@args|
    var opt-specs = [
        [ &short=c &long=count &desc="prefix lines by the number of occurrences" ]
        [ &short=d &long=repeated &desc="only print duplicate lines, one for each group" ]
        [ &short=D &desc="print all duplicate lines" ]
        [ &long=all-repeated &desc="like -D, but allow separating groups with an empty line; METHOD={none(default),prepend,separate}" ]
        [ &short=f &long=skip-fields &desc="avoid comparing the first N fields" ]
        [ &long=group &desc="show all items, separating groups with an empty line; METHOD={separate(default),prepend,append,both}" ]
        [ &short=i &long=ignore-case &desc="ignore differences in case when comparing" ]
        [ &short=s &long=skip-chars &desc="avoid comparing the first N characters" ]
        [ &short=u &long=unique &desc="only print unique lines" ]
        [ &short=z &long=zero-terminated &desc="line delimiter is NUL, not newline" ]
        [ &short=w &long=check-chars &desc="compare no more than N characters in lines" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-unlink { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-users { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-vdir { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="do not ignore entries starting with ." ]
        [ &short=A &long=almost-all &desc="do not list implied . and .." ]
        [ &long=author &desc="with -l, print the author of each file" ]
        [ &short=b &long=escape &desc="print C-style escapes for nongraphic characters" ]
        [ &long=block-size &desc="with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below" ]
        [ &short=B &long=ignore-backups &desc="do not list implied entries ending with ~" ]
        [ &short=c &desc="with -lt: sort by, and show, ctime (time of last modification of file status information); with -l: show ctime and sort by name; otherwise: sort by ctime, newest first" ]
        [ &short=C &desc="list entries by columns" ]
        [ &long=color &desc="colorize the output; WHEN can be 'always' (default if omitted), 'auto', or 'never'; more info below" ]
        [ &short=d &long=directory &desc="list directories themselves, not their contents" ]
        [ &short=D &long=dired &desc="generate output designed for Emacs' dired mode" ]
        [ &short=f &desc="list all entries in directory order" ]
        [ &short=F &long=classify &desc="append indicator (one of */=>@|) to entries; WHEN can be 'always' (default if omitted), 'auto', or 'never'" ]
        [ &long=file-type &desc="likewise, except do not append '*'" ]
        [ &long=format &desc="across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l, vertical -C" ]
        [ &long=full-time &desc="like -l --time-style=full-iso" ]
        [ &short=g &desc="like -l, but do not list owner" ]
        [ &long=group-directories-first &desc="group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping" ]
        [ &short=G &long=no-group &desc="in a long listing, don't print group names" ]
        [ &short=h &long=human-readable &desc="with -l and -s, print sizes like 1K 234M 2G etc." ]
        [ &long=si &desc="likewise, but use powers of 1000 not 1024" ]
        [ &short=H &long=dereference-command-line &desc="follow symbolic links listed on the command line" ]
        [ &long=dereference-command-line-symlink-to-dir &desc="follow each command line symbolic link that points to a directory" ]
        [ &long=hide &desc="do not list implied entries matching shell PATTERN (overridden by -a or -A)" ]
        [ &long=hyperlink &desc="hyperlink file names; WHEN can be 'always' (default if omitted), 'auto', or 'never'" ]
        [ &long=indicator-style &desc="append indicator with style WORD to entry names: none (default), slash (-p), file-type (--file-type), classify (-F)" ]
        [ &short=i &long=inode &desc="print the index number of each file" ]
        [ &short=I &long=ignore &desc="do not list implied entries matching shell PATTERN" ]
        [ &short=k &long=kibibytes &desc="default to 1024-byte blocks for file system usage; used only with -s and per directory totals" ]
        [ &short=l &desc="use a long listing format" ]
        [ &short=L &long=dereference &desc="when showing file information for a symbolic link, show information for the file the link references rather than for the link itself" ]
        [ &short=m &desc="fill width with a comma separated list of entries" ]
        [ &short=n &long=numeric-uid-gid &desc="like -l, but list numeric user and group IDs" ]
        [ &short=N &long=literal &desc="print entry names without quoting" ]
        [ &short=o &desc="like -l, but do not list group information" ]
        [ &short=p &long=indicator-style &desc="append / indicator to directories" ]
        [ &short=q &long=hide-control-chars &desc="print ? instead of nongraphic characters" ]
        [ &long=show-control-chars &desc="show nongraphic characters as-is (the default, unless program is 'ls' and output is a terminal)" ]
        [ &short=Q &long=quote-name &desc="enclose entry names in double quotes" ]
        [ &long=quoting-style &desc="use quoting style WORD for entry names: literal, locale, shell, shell-always, shell-escape, shell-escape-always, c, escape (overrides QUOTING_STYLE environment variable)" ]
        [ &short=r &long=reverse &desc="reverse order while sorting" ]
        [ &short=R &long=recursive &desc="list subdirectories recursively" ]
        [ &short=s &long=size &desc="print the allocated size of each file, in blocks" ]
        [ &short=S &desc="sort by file size, largest first" ]
        [ &long=sort &desc="sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X), width" ]
        [ &long=time &desc="change the default of using modification times; access time (-u): atime, access, use; change time (-c): ctime, status; birth time: birth, creation; with -l, WORD determines which time to show; with --sort=time, sort by WORD (newest first)" ]
        [ &long=time-style &desc="time/date format with -l; see TIME_STYLE below" ]
        [ &short=t &desc="sort by time, newest first; see --time" ]
        [ &short=T &long=tabsize &desc="assume tab stops at each COLS instead of 8" ]
        [ &short=u &desc="with -lt: sort by, and show, access time; with -l: show access time and sort by name; otherwise: sort by access time, newest first" ]
        [ &short=U &desc="do not sort; list entries in directory order" ]
        [ &short=v &desc="natural sort of (version) numbers within text" ]
        [ &short=w &long=width &desc="set output width to COLS." ]
        [ &short=x &desc="list entries by lines instead of by columns" ]
        [ &short=X &desc="sort alphabetically by entry extension" ]
        [ &short=Z &long=context &desc="print any security context of each file" ]
        [ &long=zero &desc="end each output line with NUL, not newline" ]
        [ &short=1 &desc="list one file per line" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-wc { |@args|
    var opt-specs = [
        [ &short=c &long=bytes &desc="print the byte counts" ]
        [ &short=m &long=chars &desc="print the character counts" ]
        [ &short=l &long=lines &desc="print the newline counts" ]
        [ &long=files0-from &desc="read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input" ]
        [ &short=L &long=max-line-length &desc="print the maximum display width" ]
        [ &short=w &long=words &desc="print the word counts" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-who { |@args|
    var opt-specs = [
        [ &short=a &long=all &desc="same as -b -d --login -p -r -t -T -u" ]
        [ &short=b &long=boot &desc="time of last system boot" ]
        [ &short=d &long=dead &desc="print dead processes" ]
        [ &short=H &long=heading &desc="print line of column headings" ]
        [ &short=l &long=login &desc="print system login processes" ]
        [ &long=lookup &desc="attempt to canonicalize hostnames via DNS" ]
        [ &short=m &desc="only hostname and user associated with stdin" ]
        [ &short=p &long=process &desc="print active processes spawned by init" ]
        [ &short=q &long=count &desc="all login names and number of users logged on" ]
        [ &short=r &long=runlevel &desc="print current runlevel" ]
        [ &short=s &long=short &desc="print only name, line, and time (default)" ]
        [ &short=t &long=time &desc="print last system clock change" ]
        [ &short=T &desc="add user's message status as +, - or ?" ]
        [ &short=u &long=users &desc="list users logged in" ]
        [ &long=message &desc="same as -T" ]
        [ &long=writable &desc="same as -T" ]
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-whoami { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn complete-yes { |@args|
    var opt-specs = [
        [ &long=help &desc="display this help and exit" ]
        [ &long=version &desc="output version information and exit" ]
    ]
    var arg-handlers = [ {|_| } ... ]
    edit:complete-getopt $args $opt-specs $arg-handlers
}

fn apply {
    set edit:completion:arg-completer[b2sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-b2sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[base32] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-base32 $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[base64] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-base64 $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[basename] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-basename $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[basenc] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-basenc $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[cat] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-cat $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[chcon] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-chcon $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[chgrp] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-chgrp $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[chmod] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-chmod $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[chown] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-chown $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[chroot] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-chroot $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[cksum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-cksum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[comm] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-comm $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[cp] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-cp $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[csplit] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-csplit $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[cut] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-cut $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[date] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-date $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[dd] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-dd $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[df] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-df $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[dir] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-dir $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[dircolors] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-dircolors $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[dirname] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-dirname $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[du] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-du $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[echo] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-echo $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[env] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-env $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[expand] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-expand $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[expr] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-expr $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[factor] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-factor $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[false] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-false $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[fmt] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-fmt $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[fold] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-fold $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[head] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-head $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[hostid] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-hostid $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[id] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-id $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[install] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-install $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[join] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-join $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[link] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-link $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[ln] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-ln $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[logname] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-logname $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[ls] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-ls $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[md5sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-md5sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[mkdir] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-mkdir $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[mkfifo] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-mkfifo $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[mknod] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-mknod $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[mktemp] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-mktemp $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[mv] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-mv $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[nice] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-nice $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[nl] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-nl $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[nohup] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-nohup $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[nproc] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-nproc $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[numfmt] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-numfmt $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[od] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-od $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[paste] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-paste $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[pathchk] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-pathchk $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[pinky] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-pinky $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[pr] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-pr $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[printenv] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-printenv $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[printf] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-printf $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[ptx] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-ptx $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[pwd] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-pwd $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[readlink] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-readlink $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[realpath] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-realpath $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[rm] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-rm $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[rmdir] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-rmdir $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[runcon] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-runcon $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[seq] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-seq $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sha1sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sha1sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sha224sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sha224sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sha256sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sha256sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sha384sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sha384sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sha512sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sha512sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[shred] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-shred $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[shuf] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-shuf $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sleep] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sleep $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sort] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sort $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[split] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-split $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[stat] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-stat $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[stdbuf] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-stdbuf $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[stty] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-stty $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sum] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sum $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[sync] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-sync $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[tac] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-tac $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[tail] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-tail $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[tee] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-tee $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[test] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-test $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[timeout] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-timeout $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[touch] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-touch $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[tr] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-tr $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[true] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-true $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[truncate] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-truncate $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[tsort] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-tsort $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[tty] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-tty $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[uname] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-uname $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[unexpand] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-unexpand $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[uniq] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-uniq $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[unlink] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-unlink $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[users] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-users $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[vdir] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-vdir $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[wc] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-wc $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[who] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-who $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[whoami] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-whoami $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
    set edit:completion:arg-completer[yes] = { |@args|
        use str
        if (str:has-prefix $args[-1] "-") {
            complete-yes $@args
        } else {
            edit:complete-filename $args[-1]
        }
    }
}