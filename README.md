# openttd-msc-dissertation

MSc dissertation on OpenTTD, reproducible research, and supply chain resilience


## Latest version

[↓ PDF of latest version](https://github.com/michalc/openttd-msc-dissertation/releases/latest)

<a href="https://github.com/michalc/openttd-msc-dissertation/releases/latest/download/michal-charemza-openttd-msc-dissertation.pdf" title="Download PDF of latest version">
    <img src="https://github.com/michalc/openttd-msc-dissertation/releases/latest/download/michal-charemza-openttd-msc-dissertation.png" width="510">
</a>


## Previous versions

Previous versions can be found on the [releases page](https://github.com/michalc/openttd-msc-dissertation/releases)


## Build PDF locally

```
docker run --rm -v $PWD:/workdir -e TEXINPUTS=/workdir//: texlive/texlive:TL2022-historic pdflatex -output-directory /workdir -jobname michal-charemza-openttd-msc-dissertation /workdir/main.tex
```
