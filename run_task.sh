#!/bin/bash
# run_task.sh — Run a one-off Fargate task
set -e

CLUSTER_NAME="sample-fargate-cluster"
TASK_DEF="sample-fargate"
SUBNETS="subnet-0123abcde,subnet-0456fghij"
SEC_GRP="sg-0123456789abcdef0"

aws ecs run-task \
  --cluster $CLUSTER_NAME \
  --launch-type FARGATE \
  --task-definition $TASK_DEF \
  --network-configuration \
    "awsvpcConfiguration={subnets=[$SUBNETS],securityGroups=[$SEC_GRP],assignPublicIp=ENABLED}"
