# PrestoDb Iceberg MinIo Demo

## Quickstart
`sudo docker-compose up --build`

## Connection
### Connect to MinIO via WebUI
http://localhost:9001

### Connect to prestoDb via WebUI
http://localhost:8080/

### Connect to prestoDb via CLI
sudo docker run --rm -it --network host ahanaio/prestodb-cli  presto-cli --server localhost:8080 

### Connect to prestoDb via DBeaver

**DriverName:**

PrestoDB


**Main:**

JDBC URL: `jdbc:presto://localhost:8080/iceberg`

Host: `localhost`

Port: `8080`

Database: `iceberg`

Username: `root`

Password: `***empty***`

(https://intellij-support.jetbrains.com/hc/en-us/community/posts/360007105839/comments/360002318699)

**Driver Properties Settings:**

SSL: `false`

## Example Statements
```
SHOW CATALOGS;
```

```
SHOW SCHEMAS FROM iceberg;
```

```
CREATE SCHEMA iceberg.test;
```

```
SHOW TABLES FROM iceberg.test;
```

```
CREATE TABLE iceberg.test.data (
   uid varchar,
   message varchar
)
WITH (
   format = 'PARQUET'
);
```

```
SHOW COLUMNS FROM iceberg.test.data;
```

```
SELECT * FROM iceberg.test.data;
```

```
INSERT INTO iceberg.test.data VALUES ('1234', 'Arizona');
```
