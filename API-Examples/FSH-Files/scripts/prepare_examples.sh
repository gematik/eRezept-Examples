#!/bin/bash

# Example usage: ./run_update.sh 1.4 /path/to/your/directory

PROFILE_VERSION=$1
SRC_DIRECTORY=$2
DEST_DIRECTION=$3

python populate_profileVersion.py $PROFILE_VERSION $SRC_DIRECTORY $DEST_DIRECTION
