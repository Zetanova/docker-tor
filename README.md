## docker build multiarch 
```
export TOR_VERSION=0.4.3.5-r0
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 --build-arg TOR_VERSION -t zetanova/tor:0.4.3.5 -t zetanova/tor:latest --push .
```

### firewall centos
```
#open proxy port to private zone
firewall-cmd --permanent --zone=private --add-port=9050/tcp 
firewall-cmd --permanent --zone=private --add-port=9050/udp
firewall-cmd --reload
```

## docker run
```
docker run -d --name tor --restart=unless-stopped -p 127.0.0.1:9050:9050 -p 127.0.0.1:9051:9051 zetanova/tor:0.4.3.5
   
```

## docker debug

print all connection infos
```
docker kill --signal=USR1 tor
```