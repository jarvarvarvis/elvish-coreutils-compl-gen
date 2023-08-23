# elvish-coreutils-compl-gen

elvish-coreutils-compl-gen is a library for the Elvish shell that provides completions for all GNU coreutils functions.

The completions were mostly generated by a Python script that takes the output of \<cmd\> --help and parses the result.

(Manual tweaking was then applied to generate sane output and provide a nice experience.)

## Usage

Add the following lines to your rc.elv file to use this plugin:
```
use github.com/jarvarvarvis/elvish-coreutils-compl-gen/coreutil-completions
coreutil-completions:apply
```

You can start completion by typing the following:
```
<cmd> -<tab>
```

Elvish will then display a list of options and the provided help strings from --help.
