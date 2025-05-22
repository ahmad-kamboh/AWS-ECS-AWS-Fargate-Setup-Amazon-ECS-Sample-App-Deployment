#!/bin/bash
# create_service.sh — Create a long-running service on Fargate
set -e

CLUSTER_NAME="sample-fargate-cluster"
SERVICE_NAME="sample-fargate-svc"
TASK_DEF="sample-fargate"
DESIRED_COUNT=1

aws ecs create-service \
  --cluster $CLUSTER_NAME \
  --service-name $SERVICE_NAME \
  --task-definition $TASK_DEF \
  --desired-count $DESIRED_COUNT \
  --launch-type FARGATE \
  --network-configuration \
    "awsvpcConfiguration={subnets=[\"subnet-0123abcde\"],securityGroups=[\"sg-0123456789abcdef0\"],assignPublicIp=ENABLED}"
