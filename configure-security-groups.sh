#!/bin/bash

# This script configures security groups for the application and database servers

APP_SG_ID=$(aws ec2 create-security-group --group-name app-sg --description "App server security group" --vpc-id $VPC_ID --query 'GroupId' --output text)
aws ec2 authorize-security-group-ingress --group-id $APP_SG_ID --protocol tcp --port 80 --cidr 0.0.0.0/0

DB_SG_ID=$(aws ec2 create-security-group --group-name db-sg --description "DB server security group" --vpc-id $VPC_ID --query 'GroupId' --output text)
aws ec2 authorize-security-group-ingress --group-id $DB_SG_ID --protocol tcp --port 3306 --source-group $APP_SG_ID
