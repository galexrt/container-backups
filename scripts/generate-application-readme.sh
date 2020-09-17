#!/bin/bash

commentPrefix="# "

for appPath in ./applications/*/; do
    echo "${appPath}"
    app="$(basename "${appPath}")"
    cat <<EOF > "${appPath}README.md"
# ${app}

${SCRIPT_DESCRIPTION}

## Variables

| Name | Default | Description |
| ---- | ------- | ----------- |
EOF
    while read -r line1; do
        if [ -z "${line1}" ]; then
            continue
        fi
        read -r line2
        read -r line3
        line1="${line1#$commentPrefix}"
        line2="${line2#$commentPrefix}"
        line2="${line2//Default: /}"
        name="$(echo "${line3}" | cut -d'=' -f1)"
        echo "| \`${name}\` | ${line2} | ${line1} |" >> "${appPath}README.md"
    done < <(tail -n +2 "${appPath}variables.sh")
done
