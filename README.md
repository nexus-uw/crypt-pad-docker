# crypt-pad-docker
docker file for running crypt-pad using docker

### How to build + run
```
docker build --tag cyrtp-pad  .
```
then 
```
docker run -d -p 3000:3000 -v ($pwd)/datastore:/usr/src/app/datastore {CONTAINER ID FROM PREVIOUS COMMAND}
```

### Todo
- add support for docker volume
- add examples on how to run (ie: normal, proxy, tor)
- merge changes in with parent repo
