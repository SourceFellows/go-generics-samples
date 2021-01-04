FROM golang:1

RUN mkdir /src
WORKDIR /src
RUN git clone https://go.googlesource.com/go goroot

WORKDIR /src/goroot/src
RUN git checkout dev.go2go
RUN ./make.bash
RUN /src/goroot/bin/go version

ENV GOPATH /src/goroot/src
ENV PATH /src/goroot/bin:$PATH

WORKDIR /root