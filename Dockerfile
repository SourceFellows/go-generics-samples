FROM golang:1

RUN mkdir /src
WORKDIR /src
RUN git clone https://go.googlesource.com/go goroot

WORKDIR /src/goroot/src
RUN git checkout dev.go2go
RUN ./make.bash
RUN /src/goroot/bin/go version

RUN mkdir -p /samples/src/github.com/sourcefellows/go-generics-samples
ENV GOPATH /samples
ENV GO2PATH /samples
ENV PATH /src/goroot/bin:$PATH
RUN echo 'alias go2="go tool go2go"' >> ~/.bashrc

WORKDIR /samples/src/github.com/sourcefellows/go-generics-samples