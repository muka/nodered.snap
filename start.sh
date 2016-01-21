#!/bin/sh
set -e

cd "$SNAP_APP_DATA_PATH"

echo "Launching Node-RED..."
echo "---------------------"
# echo "app data path: $SNAP_APP_DATA_PATH"
# echo "userdir: $SNAP_APP_USER_DATA_PATH"

# printenv
# echo "********"
# echo `pwd`

echo `ls $SNAPP_APP_PATH`

node-red -v --settings $SNAPP_APP_PATH/settings.js --userDir $SNAP_APP_USER_DATA_PATH $SNAP_APP_USER_DATA_PATH/flows.json
