FROM alpine:latest

EXPOSE 8118 9050

RUN apk --no-cache add privoxy tor runit tini

COPY service /etc/service/

ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]
