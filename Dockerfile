FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache go

WORKDIR /app

COPY . .

RUN go build -o main .

CMD ["/app/main"]