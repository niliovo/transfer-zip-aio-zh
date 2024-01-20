# Transfer-Zip-Aio-Zh

> For English users, please go to [transfer-zip-aio](https://github.com/niliovo/transfer-zip-aio)

- [Github](https://github.com/niliovo/transfer.zip-aio-zh)
- [Docker Hub](https://hub.docker.com/r/niliaerith/transfer-zip-aio-zh)

## 项目说明

> 此项目基于下列项目，将 transfer.zip-web 前端与后端打包成一个Docker镜像

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)

**此项目仅打包前后端，提交ISSUE请前往[原仓库](https://github.com/robinkarlberg/transfer.zip-web)**

### 支持平台

- x86_64
- arm64
- x86_32(未测试)
- arm32(未测试)

> 提示：多平台镜像为QEMU模拟不同平台编译，可能存在问题，如果镜像不可用，请尝试自行编译

## 使用说明

### Docker Compose

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
      TZ: "Asia/Shanghai"
```

### Docker Cli

```sh
docker run -itd --name transfer-zip-aio-zh --hostname transfer-zip-aio-zh --net bridge -p 8080:80 --restart always -e TZ=Asia/Shanghai niliaerith/transfer-zip-aio-zh:latest
```

### 自行编译

```
git clone https://github.com/niliovo/transfer-zip-aio-zh.git
cd transfer-zip-aio-zh
docker build -t transfer-zip-aio-zh .
# 将上述镜像 'niliaerith/transfer-zip-aio-zh' 替换为 'transfer-zip-aio-zh'
```

# 感谢

- [robinkarlberg/transfer.zip-web](https://github.com/robinkarlberg/transfer.zip-web)
- [GitHub](https://github.com/)
- [Docker Hub](https://hub.docker.com/)

## STAR 历史

<a href="https://star-history.com/#niliovo/transfer-zip-aio-zh&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=niliovo/transfer-zip-aio-zh&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=niliovo/transfer-zip-aio-zh&type=Date" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=niliovo/transfer-zip-aio-zh&type=Date" />
  </picture>
</a>
