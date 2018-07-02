#! /bin/bash
pwd
function initZk(){
    echo "start init zookeeper..."
    cd /root/java_tools/zookeeper-3.4.12/bin
    ./zkServer.sh start    
    echo "zookeeper init complete!!!"
}
function initRedis(){
    echo "start init redis..."
    /root/java_tools/redis-4.0.10/src/redis-server &
    echo "redis init complete"
}
function initMongoDB(){
    echo "start init mongo"
    /root/java_tools/mongodb-linux-x86_64-ubuntu1604-4.0.0/bin/mongod
    echo "mongo init complete"
}
function initStorm(){
    echo "start init storm..."
    /root/java_tools/apache-storm-1.2.2/bin/storm nimbus &
    /root/java_tools/apache-storm-1.2.2/bin/storm supervisor &
    /root/java_tools/apache-storm-1.2.2/bin/storm ui &
    echo "storm init complete!!"
}
function initKafka(){
    echo "start init kafka..."
    cd /root/java_tools/kafka_2.11-1.1.0
    bin/kafka-server-start.sh config/server.properties
    echo "kafka init complete!!"
}
initZk
initRedis
initMongoDB
initStorm
initKafka
