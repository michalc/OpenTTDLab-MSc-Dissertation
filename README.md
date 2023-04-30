# openttd-msc-dissertation

MSc dissertation on OpenTTD, reproducible research, and supply chain resilience

- [Download PDF of latest version](https://github.com/michalc/openttd-msc-dissertation/releases/latest), updated on each push to the main branch

- [Download PDFs of previous versions](https://github.com/michalc/openttd-msc-dissertation/releases)


## Build PDF locally

```
docker run --rm -v $PWD:/workdir -e TEXINPUTS=/workdir//: texlive/texlive:TL2022-historic pdflatex -output-directory /workdir -jobname michal-charemza-openttd-msc-dissertation /workdir/main.tex
```
