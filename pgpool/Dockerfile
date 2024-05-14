FROM alpine:3.19

RUN apk update && apk add pgpool
COPY pgpool.conf /etc/pgpool/pgpool.conf
EXPOSE "5432"
COPY pgpool.sh /usr/local/bin
ENTRYPOINT ["pgpool.sh"]
CMD ["pgpool", "-n"]
