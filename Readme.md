# For Linux
## First step before doing anything else
mkdir data
chmod 777 data
setfacl -d -m u::rwx,g::rwx,o::rwx data

# Connection String
mongodb://root:123456@localhost:27017/
mongodb://shadman:12345678@localhost:27017/