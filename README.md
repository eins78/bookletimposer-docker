# `bookletimposer` docker image

[BookletImposer / pdfimposer](https://kjo.herbesfolles.org/bookletimposer/) is a simple tool to impose PDF files for booklet printing.

This docker image wraps it in a container so it can be used on more systems.
Only the "headless" mode ('`-a` or `--no-gui`) is supported/tested, although the GUI mode could work as well if you have a X server running and add the necessary options to the `docker run` command.

## usage

```sh
# show help
docker run --rm eins78/bookletimposer

# convert pdf to booklet:
docker run --rm -v $(pwd):/data -w /data -u $(id -u):$(id -g) eins78/bookletimposer --no-gui --booklet --output booklet-a5-imposed.pdf testdata/booklet-a5.pdf
```

Your working directory should now contain a file `booklet-a5-imposed.pdf` which is the input file `testdata/booklet-a5.pdf` imposed for booklet printing (2 pages per sheet, double sided, in the correct order for folding and stapling into a booklet).
It should match the file `testdata/reference-output/booklet-a5-imposed.pdf` in this repository.

For more options see the official [BookletImposer documentation](https://kjo.herbesfolles.org/bookletimposer/bookletimposer.1.html).

You can also set an alias in your shell to make it easier to use:

```sh
alias pdf2booklet='docker run --rm -v "$(pwd):/data" -w /data -u $(id -u):$(id -g) eins78/bookletimposer --no-gui --booklet'

pdf2booklet testdata/booklet-a5.pdf # creates testdata/booklet-a5-conv.pdf
pdf2booklet --output booklet-a5-imposed.pdf testdata/booklet-a5.pdf 
```

## development

build and publish the image:

```sh
docker build -t eins78/bookletimposer .
docker push eins78/bookletimposer 
# see https://hub.docker.com/r/eins78/bookletimposer
```

debug contents of container:

```sh
docker run --rm -it -v $(pwd):/data -w /data -u $(id -u):$(id -g) --entrypoint /bin/bash eins78/bookletimposer
```

## License

The contents of this repository are in the Public Domain.

Bookletimposer and pdfimposer are both free software released under the GNU General Public License, either [version 3](http://www.gnu.org/licenses/gpl-3.0-standalone.html) or (at your option) any later version.
