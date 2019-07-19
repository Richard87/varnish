FROM debian:stretch

RUN apt-get update && \
    apt-get install -y varnish varnish-modules

EXPOSE 80 6082
WORKDIR "/etc/varnish"
CMD ["varnishd","-F","-f", "/etc/varnish/default.vcl"]