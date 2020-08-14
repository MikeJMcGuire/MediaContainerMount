#!/bin/bash

if [ -z "$DATA_MOUNT" ]; then
  echo "No mount specified."
  exit -1
fi

if ! grep -qs $DATA_MOUNT /proc/mounts; then
  echo "Waiting for mount..."
  sleep 5
  exit -1
fi

sleep 5

if [ -z "$(ls -A $DATA_MOUNT)" ]; then
  echo "Waiting for files..."
  sleep 5
  exit -1
fi

echo "Mount available, sleeping..."

sleep $START_DELAY

echo "Starting..."

/init
