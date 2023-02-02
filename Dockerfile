FROM debian:11.6-slim AS builder 
WORKDIR /opt/wpp
RUN apt-get update
RUN apt-get install -y build-essential
COPY . .
RUN make

FROM debian:11.6-slim AS runtime 
CMD ["./demo"]
EXPOSE 5000
WORKDIR /opt/wpp
COPY --from=builder /opt/wpp/demo .
