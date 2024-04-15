FROM debian

RUN apt update && \
    apt install -y bookletimposer && \
    apt clean -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data
ENTRYPOINT ["/usr/bin/bookletimposer"]
CMD ["--help"]
