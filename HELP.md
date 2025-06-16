# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/3.5.0/maven-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/3.5.0/maven-plugin/build-image.html)
* [Config Client](https://docs.spring.io/spring-cloud-config/reference/client.html)
* [Spring Web](https://docs.spring.io/spring-boot/3.5.0/reference/web/servlet.html)
* [Spring Boot DevTools](https://docs.spring.io/spring-boot/3.5.0/reference/using/devtools.html)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)

### Maven Parent overrides

Due to Maven's design, elements are inherited from the parent POM to the project POM.
While most of the inheritance is fine, it also inherits unwanted elements like `<license>` and `<developers>` from the parent.
To prevent this, the project POM contains empty overrides for these elements.
If you manually switch to a different parent and actually want the inheritance, you need to remove those overrides.

// Microservices-Based Banking App

// Project Structure Overview
// Root: banking-app/
// ├── discovery-server/           --> Eureka Server
// ├── config-server/              --> Spring Cloud Config Server
// ├── api-gateway/                --> Spring Cloud Gateway
// ├── account-service/            --> Manages bank accounts
// ├── transaction-service/        --> Handles transactions
// ├── notification-service/       --> Sends notifications (email/SMS)
// └── common-libraries/           --> Shared DTOs & utilities

// Hosting Strategy (Free Tier)
// - Source code: GitHub
// - Hosting: Render / Railway
// - DB: Neon (PostgreSQL) or PlanetScale (MySQL)
// - Kafka: Confluent Cloud (Free Tier)
// - Docker images: Docker Hub
// - Config files: GitHub (for config server)

// Let's begin with
 the Discovery Server (Eureka)
// Next step: Setup discovery-server with Spring Boot and Eureka dependency