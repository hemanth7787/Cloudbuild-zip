FROM alpine:latest
RUN apk add --update zip
ENTRYPOINT ["zip"]
CMD ["-h"]

