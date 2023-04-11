FROM mongo

RUN apt-get update \
    && apt-get install -y \
       mongodb-org-shell \
    && rm -rf /var/lib/apt/lists/*

CMD ["mongod"]