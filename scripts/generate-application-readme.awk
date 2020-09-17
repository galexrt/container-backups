#!/usr/bin/awk -f

BEGIN {
    ignoreLines = "^($|#!/bin/)"
    name = ""
    description = ""
    defaultVar = ""
}
{
    if (match($1, ignoreLines)) {
        next
    }

    if ($1 ~ /^#/) {
        if (match($2, /^shellcheck/)) {
            next
        }
        if (match($2, /^Default:/)) {
            gsub("# Default: ", "",$0)
            defaultVar = $0
            next
        }
        gsub(/^#/,"",$0)
        description = description $0
    } else if ($1 ~ /.+=.+/) {
        split($1,a,"=")
        print "| `" a[1] "` | " defaultVar " |" description " |"
        name = ""
        description = ""
        defaultVar = ""
        next
    }
}
