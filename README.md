Setup:

* `docker` daemon running
* Create a docker image with a Kafka-Connect cluster + the FS Source connector pre-installed 

```
docker build -t connect-with-fs-source:7.1.0 -f connectors/ConnectWithFileSystemSource.Dockerfile .
```


Then start the demo:
```
docker compose up
```

Wait for the stack to be up, then create the connector:
```
curl -XPOST localhost:8083/connectors -H 'Content-Type: application/json' -d @connectors/fs-source-csv.json 
```