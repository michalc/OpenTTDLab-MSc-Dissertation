FROM texlive/texlive:TL2023-historic

RUN apt-get update && \
    apt-get install -y \
      inkscape && \
    rm -rf /var/lib/apt/lists/*
