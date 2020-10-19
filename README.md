# DevOps-Tech-Challenge
My attempt at the Servian DevOps-Tech-Challenge

Designed to deploy the Servian Tech Challenge app

## Prerequisites
* Terraform
* Git
* AWS CLI ver 1 (configured under ~/.aws)
* Docker

## AWS Components
* ECS/Fargate
* Secrets Manager
* RDS Postgres
* CloudWatch Logs
* ALB

checkout 
```console
git clone --recursive https://github.com/dbalnaves/DevOps-Tech-Challenge.git
```

Setup:
```console
make init
```

Build app container image:
```console
make build
```

To deploy:
```console
make all
```

Delete deployed app:
```console
make destroy
```

Cleanup:
```console
make clean
```

## Wishlist:
With more time I would have liked to:
* Deployment with 3 Musketeers to reduce reliance on local tools
* Move the rest of app parameters in AWS Parameter store
* Terraform Workspaces
* App tagging
* Aws Route53/ACM implemnetation for immediate SSL deployment
* Terraform doesn't support ECS run-task; Would have been nice to run a once off task through a module for container provisioning tasks
