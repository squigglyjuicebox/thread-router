ARG ARCH_PREFIX
FROM homeassistant/${ARCH_PREFIX}-addon-otbr AS base
FROM base

COPY rootfs /

# disable/delete otbr-web service
RUN rm -rf /etc/s6-overlay/s6-rc.d/otbr-web /etc/s6-overlay/s6-rc.d/user/contents.d/otbr-web
