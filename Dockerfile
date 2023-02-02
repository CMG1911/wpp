FROM debian:11.6-slim AS construccion 
WORKDIR /opt/wpp
RUN apt-get update
RUN apt-get install -y build-essential
COPY . .
RUN make

FROM debian:11.6-slim AS ejecucion 
CMD ["./demo"]
EXPOSE 5000
WORKDIR /opt/wpp
COPY --from=construccion /opt/wpp/demo .
