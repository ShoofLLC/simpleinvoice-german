FROM ubuntu:20.04

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install texlive-full texlive-xetex -y
RUN apt install git -y
RUN git clone -b german-translation https://github.com/ShoofLLC/simpleinvoice-german && cd simpleinvoice-german && ./install_linux.sh
