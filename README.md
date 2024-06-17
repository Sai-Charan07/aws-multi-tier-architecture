# AWS Multi-Tier Architecture

## Project Overview
This project sets up a multi-tier architecture on AWS, including a VPC, application server, and database server, with appropriate security configurations.

## Architecture
![Architecture Diagram](architecture-diagram.png)

## AWS Services Used
- Amazon VPC
- Amazon EC2
- Amazon RDS
- Amazon ELB
- Amazon CloudWatch

## Setup Instructions
### Prerequisites
- AWS CLI configured
- AWS account with necessary permissions

### Steps
1. **Create VPC:**
    ```sh
    ./src/vpc-setup/create-vpc.sh
    ```
2. **Setup EC2 Instances:**
    ```sh
    ./src/ec2-setup/app-server-setup.sh
    ./src/ec2-setup/db-server-setup.sh
    ```
3. **Configure Security Groups:**
    ```sh
    ./src/security-setup/configure-security-groups.sh
    ```

## Documentation
- [Design Document](docs/design-doc.md)
- [Security Guidelines](docs/security-guidelines.md)
- [Performance Reports](docs/performance-reports/)
