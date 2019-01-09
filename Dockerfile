FROM golang:1.11-alpine

RUN apk -U add git docker openrc --no-cache && \
    go get sigs.k8s.io/kind

ENTRYPOINT ["/go/bin/kind"]
