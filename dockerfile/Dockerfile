FROM nginx:alpine

WORKDIR /transfer-zip

COPY BUILD.sh .
RUN chmod a+x /transfer-zip/BUILD.sh && /transfer-zip/BUILD.sh

EXPOSE 80 8001

# USER root
CMD ["run-server"]