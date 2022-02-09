FROM golang:alpine
WORKDIR /app
COPY ./go.mod .
RUN go mod download
COPY . .
RUN go build -o portal_backend src/main.go
CMD ["./portal_backend"]