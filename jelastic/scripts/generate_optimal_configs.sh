#!/bin/bash

. /etc/jelastic/environment

SED=$(which sed);

ORIENTDB_RUN_SCRIPT="${OPENSHIFT_ORIENTDB_DIR}/versions/${Version}/bin/server.sh";

if [ -e ${OPENSHIFT_ORIENTDB_DIR}/versions/${Version}/bin/variablesparser.sh ]; then
      . ${OPENSHIFT_ORIENTDB_DIR}/versions/${Version}/bin/variablesparser.sh
fi

let MAXDISKCACHE=memory_total-67;

$SED -i "s/-Xmx\([0-9]*[mM]\)*/${XMX}/" $ORIENTDB_RUN_SCRIPT;
$SED -i "s/-Xms\([0-9]*[mM]\)*/${XMS}/" $ORIENTDB_RUN_SCRIPT;
$SED -i "s/\"-Dstorage.diskCache.bufferSize=[0-9]*\"/\"-Dstorage.diskCache.bufferSize=$MAXDISKCACHE\"/" $ORIENTDB_RUN_SCRIPT;
