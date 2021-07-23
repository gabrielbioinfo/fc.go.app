FROM golang:1.16.6-alpine AS builder
WORKDIR /goapp
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build main.go

FROM scratch
WORKDIR /app
COPY --from=builder /goapp/main main
CMD [ "./main" ]