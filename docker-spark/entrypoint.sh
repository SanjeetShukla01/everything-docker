#!/bin/bash
# Start Spark master and worker
/spark/sbin/start-master.sh
/spark/sbin/start-worker.sh spark://localhost:7077

# Keep the container running
tail -f /dev/null
