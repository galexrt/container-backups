FROM debian:buster
LABEL maintainer="Alexander Trost <galexrt@googlemail.com>"

ARG OS=linux
ARG ARCH=amd64
ARG RESTIC_VERSION=0.9.6 

COPY applications /container-backups/applications
COPY entrypoint.sh /container-backups/entrypoint.sh

RUN chmod 755 -R /container-backups/ \
    && apt-get -q update -y \
    && apt-get upgrade -y \
    && apt-get install -y wget pv tar bzip2 make jq \
    && wget https://dl.min.io/client/mc/release/${OS}-${ARCH}/mc -O /usr/local/bin/mc \
    && chmod 755 /usr/local/bin/mc \
    && wget https://github.com/restic/restic/releases/download/v${RESTIC_VERSION}/restic_${RESTIC_VERSION}_${OS}_${ARCH}.bz2 -O /tmp/restic.bz2 \
    && bzip2 -d /tmp/restic.bz2 \
    && mv /tmp/restic /usr/local/bin/restic \
    && chmod 755 /usr/local/bin/restic \
    && . /container-backups/applications/base/common.sh \
    && for script in $(find /container-backups/applications/ -name 'install.sh'); do \
        echo "Running script ${script}"; \
        bash ${script} || { rt=${?}; echo "Script ${script} failed. Exit code ${rt}"; exit ${rt}; }; \
    done

VOLUME ["/data"]

ENTRYPOINT ["/container-backups/entrypoint.sh"]

CMD ["help"]
