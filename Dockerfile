FROM debian

RUN apt-get update && apt-get --yes --no-install-recommends --no-install-suggests install \
    texlive-full 
ENV DOCUMENT=document.tex
ENV BUILD_DIR=build
ADD build.sh /root/build.sh
RUN chmod +x /root/build.sh
VOLUME [/src]
WORKDIR /src
CMD ["/root/build.sh"]
