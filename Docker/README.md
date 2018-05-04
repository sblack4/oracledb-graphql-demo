# docker images for running graphiql and oracle db
https://unofficialoraclecloudhub.github.io/oracledb-graphql-demo/


### tl;dr

1. Get [Docker Community Edtion](https://www.docker.com/community-edition), it's free and awesome :heart: :whale:
1. Get [Docker Compose](https://docs.docker.com/compose/install/) which is an awesome tool to manage Docker containers, written in Python :snake:
1. Open a terminal đť  and navigate to the [Docker](/https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo/tree/master/Docker) folder
1. Run the following commands. Building the images might take a minute

```docker
docker-compose build
docker-compose up
```

**Oracle Employees on VPN and others behind HTTP Proxies  
Set the HTTP_PROXY `env` variable & use the bash script to build your containers

```bash
bash build-images.sh
```

