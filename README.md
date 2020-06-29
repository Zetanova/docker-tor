## docker build multiarch 
```
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t zetanova/tor:0.4.3.5 --push .
```

### firewall centos
```
#open proxy port to private zone
firewall-cmd --permanent --zone=private --add-port=9150/tcp 
firewall-cmd --permanent --zone=private --add-port=9150/udp
```

## docker run
```
docker run -d --name tor --restart=unless-stopped -p 127.0.0.1:9150:9150 zetanova/tor:0.4.3.5
   
```
