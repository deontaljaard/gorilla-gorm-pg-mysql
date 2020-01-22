gorilla-gorm-pg-mysql
=
A demo project using Gorilla/mux, GORM, Postgres and MySQL.

## Getting started
1. Clone the project
2. Install [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
3. Pull DB containers
```bash
docker pull mysql
docker pull postgres
```
The seeder file in api/seed will do the requisite setup.  

## Testing
#### cURL scripts
In the scripts/curl directory, there are reference scripts to interact with the API. I'm a fan of cli tools, but you can just as well use other API testing tools like [SoapUI](https://www.soapui.org/) or [Postman](https://www.getpostman.com/). More fleshed out tools like the aforementioned are a good idea anyway for automated tests in your CI/CD pipelines.

## References
* [gitconnected blog](https://levelup.gitconnected.com/crud-restful-api-with-go-gorm-jwt-postgres-mysql-and-testing-460a85ab7121)
