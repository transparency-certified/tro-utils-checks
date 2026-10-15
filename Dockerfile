FROM cirss/repro-parent:latest

# Link the image to its repository on GitHub.
LABEL org.opencontainers.image.source=https://github.com/transparency-certified/tro-utils-checks

# Install Python, for tro-utils and the jsonschema validator; libmagic, to name artifacts' types;
# GnuPG, to sign; faketime, to fix the clock while candidates are made; xz-utils, to unpack Node.
RUN apt-get update && \
	apt-get install -y python3 python3-pip libmagic1 gnupg faketime xz-utils

# Install a pinned version of tro-utils so candidates change when the pin is moved.
RUN pip3 install tro-utils==0.5.1

# Install Node for running tro-checks.
ENV NODE_VERSION=22.11.0
RUN ARCH="$(dpkg --print-architecture)" && \
	case "$ARCH" in \
		amd64) NODE_ARCH=x64 ;; \
		arm64) NODE_ARCH=arm64 ;; \
		*) echo "unsupported architecture: $ARCH" >&2; exit 1 ;; \
	esac && \
	wget -q "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${NODE_ARCH}.tar.xz" && \
	tar -xJf "node-v${NODE_VERSION}-linux-${NODE_ARCH}.tar.xz" -C /usr/local --strip-components=1 --no-same-owner && \
	rm "node-v${NODE_VERSION}-linux-${NODE_ARCH}.tar.xz"

# Bootstrap the repro framework.
ADD ${REPRO_DIST}/boot-setup /repro/dist/
RUN bash /repro/dist/boot-setup
USER repro

# Import the repro modules tro-checks and review-ledger.
ENV TRACE 'https://raw.githubusercontent.com/transparency-certified/${1}/${2}/exports'
RUN repro.require tro-checks main ${TRACE} --report
RUN repro.require review-ledger main ${CIRSS} --report

CMD  /bin/bash -il
