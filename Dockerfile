FROM apache/airflow:2.3.4
USER root
RUN apt-get update && apt-get install -y wget bzip2 
RUN apt-get install -y wget \
    && wget "https://download.mozilla.org/?product=firefox-95.0.1&os=linux64&lang=pt-BR" -O firefox.tar.bz2 \
    && tar -jxvf  firefox.tar.bz2 -C /opt/ \
    && apt-get install -y libxtst6 libgtk-3-0 libx11-xcb-dev libdbus-glib-1-2 libxt6 libpci-dev \
    && ln -sf /opt/firefox/firefox /usr/bin/firefox