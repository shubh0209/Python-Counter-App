#!/bin/bash
#Assuming there are two different namespaces (default and prod) in single cluster.

while true 
do
  read -p 'Enter the name of environment to deploy application (default or prod): ' target
  if [[ $target == 'default' || $target == 'prod' ]]
  then
     break
  fi
done

#Deploying the application

deploymentOption=target=$target
echo "The application will deployed on $target namespace in the cluster"
helm install test-app --set $deploymentOption ./helm_chart_task_6 
