#!/bin/bash
# create_cluster.sh — Create an ECS Fargate cluster
set -e

CLUSTER_NAME="sample-fargate-cluster"

aws ecs create-cluster \
  --cluster-name $CLUSTER_NAME \
  --capacity-providers FARGATE

echo "Cluster '$CLUSTER_NAME' created."
