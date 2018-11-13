FROM golang:latest

RUN mkdir -p /go/src/app
WORKDIR /go/src/app
COPY . .
RUN go get
RUN go install
RUN go build

CMD ["app"]