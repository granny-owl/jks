FROM ubuntu:20.04
RUN mkdir /workspace
WORKDIR /workspace

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8

RUN apt update && apt install -y cmake g++ git net-tools

COPY . .

RUN rm -rf build && mkdir build && cd build && cmake .. && make 

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

# ENTRYPOINT [ "/workspace/build/src/bridge_server" ] 
# docker run --rm -it --entrypoint bash opctest