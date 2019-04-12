FROM openjdk:8-jre-slim

RUN apt-get update
RUN apt-get install -y curl
RUN curl -L https://github.com/CerebralFart/KafkaWS/releases/download/0.2/KafkaWS-0.2.jar >> /KafkaWS.jar
RUN chmod a+x /KafkaWS.jar

RUN ls -al /

CMD java -jar /KafkaWS.jar