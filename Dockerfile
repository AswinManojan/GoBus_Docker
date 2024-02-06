FROM golang:1.21.1

WORKDIR /gobus

COPY go.mod go.sum ./
RUN go mod download


COPY . .


RUN go build -o gobus

EXPOSE 8080

CMD ["./gobus"]

