#!/bin/bash

if [ -z "$DATA_MOUNT" ]; then
  echo "No mount specified."
  exit
fi

if [ -z "$(ls -A $DATA_MOUNT)" ]; then
  echo "Waiting for mount..."
  sleep 5
  exit -1
fi

/init
