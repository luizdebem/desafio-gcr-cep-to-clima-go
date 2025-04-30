FROM golang:1.23-alpine

WORKDIR /app
COPY . .
COPY .env .
RUN go build -o gcr-cep-to-clima

ENTRYPOINT ["./gcr-cep-to-clima"]