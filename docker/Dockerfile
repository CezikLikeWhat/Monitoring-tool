FROM golang:1.20-bullseye as build

WORKDIR /app

COPY . .

# Dev dependencies
RUN go install github.com/spf13/cobra-cli@latest

RUN go mod download && \
    go vet -v && \
    go fmt && \
    go build -o ./builds/app

#FROM gcr.io/distroless/static-debian11:latest
#
#COPY --from=build /app/builds/app /
#CMD ["/app"]