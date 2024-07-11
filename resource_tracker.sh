#!/bin/bash
#
#
#
###############################
#
#
#Author : Mohammed Bazith
#Date   : 09-07-2024
#
#This script will report all the aws resource usage in daily manner 
#
#version : V1
#
###############################

set -x #debug mode
set -e #will stop the script if error occurs
set -o pipefail #will stop the script if one of the pipe factor fails


#list s3 buckets
#list ec2 instance
#list lamda functions
#list iam users



#list s3 buckets
aws s3 ls | grep myresource 

#list ec2 instance
aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId'


#list lamda functions
aws lambda list-functions  |jq '.Functions[].FunctionName'


#list iam  users
aws iam list-users











