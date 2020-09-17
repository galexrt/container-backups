#!/bin/bash

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
    awk -f ./scripts/generate-application-readme.awk "${appPath}variables.sh" >> "${appPath}README.md"
done
