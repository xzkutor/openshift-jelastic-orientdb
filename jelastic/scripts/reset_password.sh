#!/bin/bash -x

SED=$(which sed);

. /etc/jelastic/environment

J_OPENSHIFT_APP_ADM_USER="root";

function _setPassword() {
    ORIENTDB_SERVER_PROP_FILE="${OPENSHIFT_ORIENTDB_DIR}/versions/1.7.4/config/orientdb-server-config.xml";
    kill -9 $(ps aux|grep 'orientdb\|control start\|server.sh'|grep -v grep|awk '{print $2}') >> /dev/null 2>/dev/null;
    sed -i '/<user name=\"root\".*password=/d' $ORIENTDB_SERVER_PROP_FILE;
    sed -i '/<user name=\"guest\".*password=/d' $ORIENTDB_SERVER_PROP_FILE;
    sed -i "/<users>/a <user name=\"guest\" password=\"$J_OPENSHIFT_APP_ADM_PASSWORD\" resources=\"connect,server.listDatabases,server.dblist\"\/>" $ORIENTDB_SERVER_PROP_FILE;
    sed -i "/<users>/a <user name=\"root\" password=\"$J_OPENSHIFT_APP_ADM_PASSWORD\" resources=\"*\"\/>" $ORIENTDB_SERVER_PROP_FILE;
    /etc/init.d/cartridge start >> /dev/null 2>&1;
}
