FROM debian

RUN apt-get update && apt-get --yes --no-install-recommends --no-install-suggests install \
    texlive-full 
ENV DOCUMENT=document.tex
VOLUME [/src]
WORKDIR /src
CMD ["/bin/bash","-c","pdflatex /src/${DOCUMENT}"]
