FROM mongo

# RUN apt-get update \
#     && apt-get install -y \
#        mongodb-org-shell \
#     && rm -rf /var/lib/apt/lists/*

RUN echo "deb [ arch=amd64,arm64 signed=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
RUN apt-get update
RUN apt-get install -y mongodb-mongosh
# RUN mongosh admin --host mongo -u root -p 123456 --eval "if(!db.getUsers({user:'shadman'}).length){db.createUser({user:'shadman', pwd:'12345678', roles:[{role:'readWriteAnyDatabase', db:'admin'}]})}"

CMD ["mongod"]