FROM scratch

ARG COUIC_VERSION="1.0.2"

ADD --chmod=0755 \
    --chown=0:0 \
    --checksum=sha256:775b111d1c4916c458dfac3325b8c76d513fc3a5282a47912979dfc3ad1b6a30 \
    https://github.com/FCSC-FR/couic/releases/download/v${COUIC_VERSION}/couic-static \
    /couic

ADD --chmod=0755 \
    --chown=0:0 \
    --checksum=sha256:0a9340e421418a7cedac27c89572ab9d2156d82c8a27917658d51779e6bcbbc8 \
    https://github.com/FCSC-FR/couic/releases/download/v${COUIC_VERSION}/couicctl-static \
    /couicctl

ADD --chmod=0755 \
    --chown=0:0 \
    --checksum=sha256:d31ae8b13bc58385022aa454b162a9117ec07f923aa2e1b262bfedefdcf2284e \
    https://github.com/FCSC-FR/couic/releases/download/v${COUIC_VERSION}/couic-report-static \
    /couicctl

USER 1000

ENTRYPOINT ["/couic"]
