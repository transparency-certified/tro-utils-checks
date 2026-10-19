FROM cirss/repro-parent:latest

# Link the image to its repository on GitHub.
LABEL org.opencontainers.image.source=https://github.com/transparency-certified/tro-utils-checks

# Install Python, for tro-utils and the jsonschema validator; libmagic, to name artifacts' types;
# GnuPG, to sign; faketime, to fix the clock while candidates are made; xz-utils, to unpack Node.
RUN apt-get update && \
	apt-get install -y python3 python3-pip libmagic1 gnupg faketime xz-utils

# Install a pinned version of tro-utils so candidates change when the pin is moved. This line is
# the one place the version is named: the workflows read it from here, and moving it is the whole
# of a version bump, since CI remakes the candidates and the reports from it.
ARG TRO_UTILS_VERSION=0.5.2
RUN pip3 install tro-utils==${TRO_UTILS_VERSION}

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
ENV TRACE='https://raw.githubusercontent.com/transparency-certified/${1}/${2}/exports'

# Import tro-checks at a pinned commit so the reports change only when the pin is moved. The checks,
# and the versions of the TRACE Specification they come from, are all in tro-checks' own tree, so
# this commit is the whole of what the checks say. Like the tro-utils pin, this line is the one place
# it is named: Watch checks reads it from here and says when main has moved past it with a difference.
ARG TRO_CHECKS_VERSION=13750ed5e76dbe66a93af2a4d9cd9a84adafd86f
RUN repro.require tro-checks ${TRO_CHECKS_VERSION} ${TRACE} --report
RUN repro.require review-ledger main ${CIRSS} --report

CMD ["/bin/bash", "-il"]
