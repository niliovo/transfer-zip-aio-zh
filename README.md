# transfer.zip-aio-zh

**For English users, please go to[transfer.zip-aio](https://github.com/niliovo/transfer.zip-aio)**

- [Github](https://github.com/niliovo/transfer.zip-aio-zh)
- [Docker Hub](https://hub.docker.com/r/niliaerith/transfer-zip-aio-zh)

# 此项目基于下列项目，将 transfer.zip-web 前端与后端打包成一个Docker镜像

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)

**此项目仅打包前后端，提交ISSUE请前往[原仓库](https://github.com/robinkarlberg/transfer.zip-web)**

# 使用指南

## Docker-Cli 使用指南

- amd64/i386/arm64/armv7

```sh
docker run -itd --name transfer-zip-aio-zh --hostname transfer-zip-aio-zh --net bridge -p 8080:80 --restart always -e PUID=0 -e PGID=0 -e TZ=Asia/Shanghai niliaerith/transfer-zip-aio-zh:latest
```

## Docker Compose 使用指南

- amd64/i386/arm64/armv7

```compose.yml
  transfer-zip-aio-zh:
    image: niliaerith/transfer-zip-aio-zh:latest
    container_name: transfer-zip-aio-zh
    hostname: transfer-zip-aio-zh
    restart: always
    network_mode: bridge
    ports:
      - 8080:80
    environment:
      PUID: "0"
      PGID: "0"
      TZ: "Asia/Shanghai"
```

## 支持平台

- amd64
- arm64
- i386(未测试)
- armv7(未测试)

# 感谢

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)
- [GitHub](https://github.com/)
- [Docker Hub](https://hub.docker.com/)
