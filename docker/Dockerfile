FROM ubuntu:latest
LABEL maintainer="marc@mlwhat.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    wget tar \
    python3-pip gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /temp
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN tar --strip-components=1 -xvf install-tl-unx.tar.gz

# Note: single install layer causes difficulty with uploading 4gb file
# instead install each collection required by the full scheme, one by one.
# list of required packages can be found here:
# https://tug.org/svn/texlive/trunk/Master/tlpkg/tlpsrc/scheme-full.tlpsrc?view=markup
RUN ./install-tl --no-interaction --no-doc-install --no-src-install --texdir=/usr/local/texlive/texdir --scheme=basic
ENV PATH="/usr/local/texlive/texdir/bin/x86_64-linux:$PATH"
RUN tlmgr install collection-basic
RUN tlmgr install collection-bibtexextra
RUN tlmgr install collection-binextra
RUN tlmgr install collection-context
RUN tlmgr install collection-fontsextra
RUN tlmgr install collection-fontsrecommended
RUN tlmgr install collection-formatsextra
RUN tlmgr install collection-fontutils
RUN tlmgr install collection-games
RUN tlmgr install collection-humanities
RUN tlmgr install collection-langarabic
RUN tlmgr install collection-langchinese
RUN tlmgr install collection-langcjk
RUN tlmgr install collection-langcyrillic
RUN tlmgr install collection-langczechslovak
RUN tlmgr install collection-langenglish
RUN tlmgr install collection-langeuropean
RUN tlmgr install collection-langfrench
RUN tlmgr install collection-langgerman
RUN tlmgr install collection-langgreek
RUN tlmgr install collection-langitalian
RUN tlmgr install collection-langjapanese
RUN tlmgr install collection-langkorean
RUN tlmgr install collection-langother
RUN tlmgr install collection-langpolish
RUN tlmgr install collection-langportuguese
RUN tlmgr install collection-langspanish
RUN tlmgr install collection-latex
RUN tlmgr install collection-latexextra
RUN tlmgr install collection-latexrecommended
RUN tlmgr install collection-luatex
RUN tlmgr install collection-mathscience
RUN tlmgr install collection-metapost
RUN tlmgr install collection-music
RUN tlmgr install collection-pictures
RUN tlmgr install collection-plaingeneric
RUN tlmgr install collection-pstricks
RUN tlmgr install collection-publishers
RUN tlmgr install collection-texworks
RUN tlmgr install collection-xetex



WORKDIR /data
