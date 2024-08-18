#!/bin/bash

# This script will list all the resources in the AWS account
# Author: Shashidhar DevOps Engineer
# Version: v1

# List of supported AWS resources by the script
# EC2, S3, RDS, DynamoDB, Lambda, EBS, ELB, CloudFront, CloudWatch, SNS, SQS, Route53, VPC, CloudFormation, IAM

# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh us-east-1 EC2

if [ $# -ne 2 ]; then
    echo "Usage: $0 <region> <service_name>"
    echo "Example: ./aws_resource_script.sh us-east-1 ec2"
    exit 1
fi

# Assign the arguments to variables and convert the service to lowercase
aws_region=$1
aws_service=$2

# Check if the AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it and try again."
    exit 1
fi

# Check if the AWS CLI is configured
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. Please configure it and try again."
    exit 1
fi

# Execute the AWS CLI command based on the service name

case $2 in
    EC2)
        aws ec2 describe-instances --region $1
        ;;
    S3)
        aws s3api list-buckets --region $1
        ;;
    RDS)
        aws rds describe-db-instances --region $1
        ;;
    DynamoDB)
        aws dynamodb list-tables --region $1
        ;;
    Lambda)
        aws lambda list-functions --region $1
        ;;
    EBS)
        aws ec2 describe-volumes --region $1
        ;;
    ELB)
        aws elb describe-load-balancers --region $1
        ;;
    CloudFront)
        aws cloudfront list-distributions --region $1
        ;;
    CloudWatch)
        aws cloudwatch list-metrics --region $1
        ;;
    SNS)
        aws sns list-topics --region $1
        ;;
    SQS)
        aws sqs list-queues --region $1
        ;;
    Route53)
        aws route53 list-hosted-zones --region $1
        ;;
    VPC)
        aws ec2 describe-vpcs --region $1
        ;;
    CloudFormation)
        aws cloudformation list-stacks --region $1
        ;;
    IAM)
        aws iam list-users --region $1
        ;;
    *)
        echo "Invalid service name. Please provide a valid service name."
        exit 1
        ;;
esac


# scp -i "C:\Users\psreddy\Downloads\ec2-key.pem" "D:\Github\DevOps\Linux\aws_resource_list.sh" ubuntu@98.80.251.195:/home/ubuntu/

