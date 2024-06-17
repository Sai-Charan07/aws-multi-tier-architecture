#!/bin/bash

# This script launches an EC2 instance for the application server

AMI_ID="ami-0abcdef1234567890"  # Replace with a valid AMI ID
INSTANCE_TYPE="t2.micro"
KEY_NAME="your-key-pair"
SECURITY_GROUP_ID="sg-0abcdef1234567890"  # Replace with a valid security group ID
SUBNET_ID="subnet-0abcdef1234567890"  # Replace with a valid subnet ID

INSTANCE_ID=$(aws ec2 run-instances --image-id $AMI_ID --instance-type $INSTANCE_TYPE --key-name $KEY_NAME --security-group-ids $SECURITY_GROUP_ID --subnet-id $SUBNET_ID --query 'Instances[0].InstanceId' --output text)
echo "App Server Instance ID: $INSTANCE_ID"
