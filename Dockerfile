FROM ubuntu:24.04

WORKDIR /app

COPY . .

RUN chmod u+x ./*.sh  && useradd --create-home --shell /usr/sbin/nologin appuser && chown -R appuser:appuser /app

USER appuser

CMD ["./repository-healthcheck.sh"]
