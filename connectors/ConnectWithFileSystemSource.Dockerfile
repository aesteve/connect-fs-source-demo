FROM confluentinc/cp-kafka-connect-base:7.1.0

RUN confluent-hub install --no-prompt mmolimar/kafka-connect-fs:1.3.0