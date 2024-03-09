FROM zabbix/zabbix-agent2:5.0-ubuntu-latest
USER root
ENV TZ=Brazil/East DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y nvidia-utils-515 \
    && rm -rf ${PKGTMPDIR}/* && apt-get clean && rm -rf /var/lib/apt/lists/*

USER zabbix
