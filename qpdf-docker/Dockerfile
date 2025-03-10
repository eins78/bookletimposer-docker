FROM debian

RUN apt update && \
    apt install -y --no-install-recommends qpdf && \
    apt clean -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /data
ENTRYPOINT ["/usr/bin/qpdf"]
CMD ["--help"]
