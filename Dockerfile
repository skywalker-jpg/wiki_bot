FROM golang:1.16-alpine

RUN apk add --no-cache ca-certificates git

WORKDIR /app
COPY . .

RUN go build -o telegrambot

CMD ["./telegrambot"]
