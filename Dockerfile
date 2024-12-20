# syntax=docker/dockerfile:1

FROM golang:1.23.4-alpine

WORKDIR /app

COPY . .
# COPY go.mod ./
# COPY go.sum ./
RUN go mod download

# COPY *.go ./

RUN go build -o /go-gin-test

EXPOSE 8080

CMD [ "/go-gin-test" ]
