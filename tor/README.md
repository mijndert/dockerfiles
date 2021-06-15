# tor-relay
Docker image for my Tor relay

```
docker run -d \
    -v /etc/localtime:/etc/localtime:ro \ 
    -v $PWD/tor-data:/var/lib/tor \ 
    --restart always \ 
    -p 9001:9001 \ 
    --name tor-relay \ 
    mijndert/tor-relay
 ```
