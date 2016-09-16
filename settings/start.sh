#!/bin/sh
set -e
echo STARTING NODE-RED - $SNAP/bin/node-red $SNAP/settings.js $SNAP_USER_DATA
"$SNAP"/bin/node-red -v --settings "$SNAP/settings.js" --userDir "$SNAP_USER_DATA" "$SNAP_USER_DATA/flows.json"
