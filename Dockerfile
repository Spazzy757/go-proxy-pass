FROM golang:1.8

WORKDIR /go/src/app
COPY src/. .

RUN go install app   # "go get -d -v ./..."

ENTRYPOINT /go/bin/app
