FROM openjdk:11
#copy the source tree and pom.xml to our new container
COPY ./ ./
#package our application code
RUN mvn clean package
#set the startup command to execute the jar file
ENTRYPOINT ["java","-jar","target/websocket-demo-0.0.1-SNAPSHOT.jar"]
