#!/bin/bash
# cleanup.sh — Delete ECS resources and cluster
set -e

CLUSTER_NAME="sample-fargate-cluster"
SERVICE_NAME="sample-fargate-svc"
TASK_DEF="sample-fargate"

# Scale service to zero and delete
aws ecs update-service \
  --cluster $CLUSTER_NAME \
  --service $SERVICE_NAME \
  --desired-count 0

aws ecs delete-service \
  --cluster $CLUSTER_NAME \
  --service $SERVICE_NAME \
  --force

# Deregister task definition
aws ecs deregister-task-definition --task-definition $TASK_DEF

# Delete cluster
aws ecs delete-cluster --cluster $CLUSTER_NAME

echo "Clean-up complete."
