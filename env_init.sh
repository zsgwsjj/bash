#!/bin/bash
echo "this shell will init env with live-storm project!!"
pwd
cd /root/java_tools/zookeeper-3.4.12/bin
./zkServer.sh start
function initZk(){
    echo "xxx"
}
initZk
