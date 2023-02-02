FROM debian:11.6-slim 
WORKDIR /opt/wpp
CMD ["./demo"]
EXPOSE 5000
RUN apt-get update
RUN apt-get install -y build-essential
COPY . .
RUN make 

