----

<a href="https://github.com/michalc/openttd-msc-dissertation/releases/latest/download/michal-charemza-openttd-msc-dissertation.pdf" title="Download PDF of latest version">
    <img src="https://github.com/michalc/openttd-msc-dissertation/releases/latest/download/michal-charemza-openttd-msc-dissertation.png">
</a>


---

# OpenTTDLab-MSc-Dissertation

MSc dissertation presenting OpenTTDLab: A reusable Python framework for repeatable, replicable, & reproducible
experiments using OpenTTD


## Latest version

[↓ PDF of latest version](https://github.com/michalc/openttd-msc-dissertation/releases/latest)

## Previous versions

Previous versions can be found on the [releases page](https://github.com/michalc/openttd-msc-dissertation/releases)


## Build PDF locally

```
docker run --rm -v $PWD:/workdir texlive/texlive:TL2022-historic bash -c "cd /workdir && pdflatex main.tex && bibtex main && pdflatex main.tex && pdflatex main.tex && mv main.pdf michal-charemza-openttd-msc-dissertation.pdf"
```
