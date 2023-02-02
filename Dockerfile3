FROM debian:11.6-slim
CMD ["./demo"]
EXPOSE 5000
WORKDIR /opt/wpp
COPY . .
RUN apt-get update\
    && apt-get install -y build-essential\
    && make\
    && apt-get purge -y build-essential\
    && apt autoremove -y
 
