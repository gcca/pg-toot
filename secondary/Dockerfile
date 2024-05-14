FROM postgres:16.2-alpine3.19
ENV PGDATA /var/lib/postgresql/data
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 1777 "$PGDATA"
COPY secondary.sh /usr/local/bin
ENTRYPOINT ["secondary.sh"]
CMD ["postgres"]
