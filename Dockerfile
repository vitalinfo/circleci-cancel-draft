FROM alpine:3.12
RUN set -x \
      && apk update \
      && apk add curl bash jq \
      && rm -rf /var/cache/apk/*

COPY cancel-draft-build /bin/
CMD ["/bin/cancel-draft-build", "--force"]
