gorilla-gorm-pg-mysql
=
A demo project using Gorilla/mux, GORM, Postgres and MySQL.

## Getting started
1. Clone the project
2. Install [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
3. Linux post install [instructions](https://docs.docker.com/install/linux/linux-postinstall/)
4. Pull DB containers
```bash
docker pull mysql
docker pull postgres
```
5. Setup containers
```bash
DB_PASSWORD=4us2know
# mysql
docker run \
    --name mysql \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=${DB_PASSWORD} \
    -d mysql
# postgres
docker run \
    --name postgres \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=${DB_PASSWORD} \
    -d postgres
```
6. Use psql and mysql clients to create DBs matching the name in `.env`. ([DBeaver](https://dbeaver.io/) is useful).
The seeder file in `api/seed` will do the requisite setup.  

## Run
#### Outside Docker
```bash
go run main.go
```

#### Inside Docker
```bash
docker build -t api .
docker run \
    --name api \
    -p 8080:8080 
    -d api
```

## Testing
#### cURL scripts
In the scripts/curl directory, there are reference scripts to interact with the API. I'm a fan of cli tools, but you can just as well use other API testing tools like [SoapUI](https://www.soapui.org/) or [Postman](https://www.getpostman.com/). More sophisticated tools like the aforementioned are a good idea anyway for automated tests in your CI/CD pipelines.

#### Go Test
```bash
go test ./tests/...
```

## References
* [gitconnected blog](https://levelup.gitconnected.com/crud-restful-api-with-go-gorm-jwt-postgres-mysql-and-testing-460a85ab7121)
