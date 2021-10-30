FROM java:latest
COPY ./target/ /home/target
WORKDIR /home/target
EXPOSE 8080
ENTRYPOINT java -jar *.jar --server.port=8080
