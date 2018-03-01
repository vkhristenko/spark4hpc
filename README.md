# spark4hpc

## What's already available

## Attempt 1 - short term cluster roll out
This is the first attempt at launching a spark standalone cluster on the DEEP-EST HPC infrastructure. Both spark-shell and spark-submit have been tested and ran successfully.

*Setup:*
- allocate resources for interactive use `srun --partition=sdv -N 5 --ntasks-per-node=1 --pty /bin/bash -i`
- Start up the cluster `srun ./startCluster.sh $SPARK_HOME deeper-sdv07.deep`. This assumes that the node on which previous cmd landed is deeper-sdv07. 
- from the *deepv* node launch a spark-shell with `spark-shell --master spark://MASTER_IP:MASTER_PORT`
