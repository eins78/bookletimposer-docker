# pdf2zine

`pdf2zine` converts PDF files into a zine.
They can then be printed double sided (flipped on the short edge) on A4 paper and folded into a booklet.

It consists of three parts:

- [`pdf2zine`](./pdf2zine): small bash script that uses `bookletimposer` and `qpdf`. Its only needed if the back page of the cover is the first page of the PDF (because that is easier to produce in InDesign). The page will be moved to the end of the PDF before booklet imposition.
- [`bookletimposer-docker`](./bookletimposer-docker): docker image that contains `pdfimposer`
- [`qdf-docker`](./qdf-docker): docker image that contains `qpdf`

## Installation

- Install some `docker` distribution, e.g. [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- `curl -fsSL https://github.com/eins78/pdf2zine/raw/refs/heads/main/pdf2zine > ~/bin/pdf2zine && chmod +x ~/bin/pdf2zine`

## License

The contents of this repository are in the Public Domain.
See README files of the individual parts for more details.
