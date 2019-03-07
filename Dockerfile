# https://medium.com/@chemidy/create-the-smallest-and-secured-golang-docker-image-based-on-scratch-4752223b7324

FROM debian:latest

RUN apt-get update -y && \
    apt-get install -y ca-certificates ffmpeg \
    && update-ca-certificates --verbose \
    && apt-get clean
