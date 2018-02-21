#!/bin/bash

#
# set the env vars 
#
SPARK_HOME=$1
SPARK_MASTER_IP=$2
SPARK_MASTER_PORT=7077
JOBID=$SLURM_JOB_ID
TASKID=$SLURM_PROCID

if [ $TASKID -eq 0 ]; then 
    echo "Starting a SPARK MASTER on node ${SPARK_MASTER_IP} and the hostname is $(hostname)"
else
    echo "Starting a SPARK WORKER on node $(hostname)"
    sleep 30s
fi
