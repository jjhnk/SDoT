#!/usr/bin/env bash
set -e

echo "🚀 Starting NameNode..."
hdfs namenode &

echo "⏳ Waiting for HDFS to be up..."
until hdfs dfs -ls / > /dev/null 2>&1; do
  sleep 3
done
echo "✅ HDFS is ready!"

echo "📁 Creating /user/nifi and setting permissions..."
hdfs dfs -mkdir -p /user/nifi
hdfs dfs -chown nifi:supergroup /user/nifi
hdfs dfs -chmod 770 /user/nifi

hdfs dfs -setfacl -m user:dr.who:rwx /user/nifi

wait