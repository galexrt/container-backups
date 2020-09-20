#!/bin/bash

for appPath in ./applications/*/; do
    echo "${appPath}"
    app="$(basename "${appPath}")"

    README_DESCRIPTION=""
    if [ -f "${appPath}.readme-env" ]; then
        # shellcheck disable=SC1090
        . "${appPath}.readme-env"
    fi

    cat <<EOF > "${appPath}README.md"
# ${app}

${README_DESCRIPTION}

## Variables

| Name | Default | Description |
| ---- | ------- | ----------- |
EOF
    awk -f ./scripts/generate-application-readme.awk "${appPath}variables.sh" >> "${appPath}README.md"
done
