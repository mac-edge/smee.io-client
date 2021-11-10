# smee.io-client dockerized
Receive payloads with smee.io and send them to your locally running application.

This is a docker container with smee-client on node:16-alpine3.11 image.

## Usage
If you want to test to receive payloads in your local (docker-compose) test environvment,
you can start this container and only need to define two environment variables.

```
version: '3'
services:
  smee_client:
    image: macedge/smee.io-client
    environment:
      SMEE_URL: https://smee.io/my-random-endpoint
      TARGET_URL: http://127.0.0.1:8080/path/to/local/receicer
```


Start your docker-compose environment with:
```
docker-compose up
```
You will see an output similar to this.
```
smee_client_1  | Forwarding https://smee.io/my-random-endpoint to http://127.0.0.1:8080/path/to/local/receicer
smee_client_1  | Connected https://smee.io/my-random-endpoint
```

Now you will be able to listen to webhooks events that are send to `https://smee.io/my-random-endpoint` on your local machine at `http://127.0.0.1:8080/path/to/local/receiver`
