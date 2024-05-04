FROM texlive/texlive:TL2022-historic

RUN apt-get update && \
    apt-get install -y \
      inkscape && \
    rm -rf /var/lib/apt/lists/*
