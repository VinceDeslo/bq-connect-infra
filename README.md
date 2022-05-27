# BQ connect infrastructure

A repo containing deployment configurations for a microservice based BigQuery connector.

### State
:construction: Project currently a work in progress

### Related Microservice
[bq-connect](https://github.com/VinceDeslo/bq-connect)

#### Related Frontend
[bq-connect-frontend](https://github.com/VinceDeslo/bq-connect-frontend)

## Roadmap:
- [x] Terraform setup for provisionning.
- [x] Google Cloud Storage to hold data.
- [x] BigQuery as a data warehouse.
- [ ] Kubernetes Engine to host services.

## Dependencies:
|Dependency|Version|
|---|---|
|Terraform|v1.1.9|

## Diagram
![diagram](./diagrams/architecture.png) 