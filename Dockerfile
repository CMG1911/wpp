FROM debian 
WORKDIR /opt/wpp
COPY . .
RUN apt update
RUN apt install -y build-essential
RUN make 
CMD ["./demo"]
