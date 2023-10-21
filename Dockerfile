FROM ubuntu:latest
RUN apt update && apt install libjansson4 curl git wget -y
RUN apt-get install build-essential libcurl4-openssl-dev autotools-dev automake libtool -y
RUN git unit && git pull https://github.com/yentencoin/yenten-arm-miner-yespowerr16
RUN ./build.sh
RUN ./sugarmaker -a yespowerr16 -o stratum+tcp://stratum-na.rplant.xyz:3382 -u YnhcyZLMDHPiRtGmDHwg23PMMqSWzbmEJR
