FROM alpine
MAINTAINER Victor Castell <victor@victorcastell.com>

ENV DKRON_VERSION 0.11.0

RUN set -x \
	&& buildDeps='bash ca-certificates openssl' \
	&& apk add --update $buildDeps \
	&& rm -rf /var/cache/apk/* \
	&& mkdir -p /opt/local/dkron \
	&& wget -O /opt/local/dkron/dkron.tar.gz https://github.com/victorcoder/dkron/releases/download/v${DKRON_VERSION}/dkron_${DKRON_VERSION}_linux_amd64.tar.gz \
	&& cd /opt/local/dkron \
	&& tar -xzf dkron.tar.gz \
	&& rm /opt/local/dkron/dkron.tar.gz

EXPOSE 8080 8946

ENV SHELL /bin/bash
WORKDIR /opt/local/dkron

ENTRYPOINT ["/opt/local/dkron/dkron"]

CMD ["--help"]
