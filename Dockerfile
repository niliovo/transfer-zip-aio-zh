FROM nginx:alpine

MAINTAINER nili "1791356563@qq.com"

ENV APPATH=${APPATH:-"/transfer-zip-aio-zh"}

WORKDIR ${APPATH}

COPY ./* ${APPATH}

RUN chmod +x ./* && \
    ./build.sh

EXPOSE 80 8001

# USER root
CMD ["run-server"]