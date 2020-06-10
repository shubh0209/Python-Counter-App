#!/bin/bash

#Assuming no deployments are running currently, we will start by deploying the app in older version.

helm install counter-app --set blue.enabled=true ./blue-green-deploy-chart-task-8

echo 'Application has been deployed in blue deployment!!'

echo '=============================================================================================='

read -p 'Press enter if you want to deploy the newer version of application, for exit hit ctrl+C ' 
echo '-------------------------------------'

#Launching newer version of app in another-deployment

helm upgrade counter-app --set green.enabled=green --reuse-values ./blue-green-deploy-chart-task-8

echo '"A newer version of application is launched in green deployment, traffic is still serving by blue deployment."'

echo '=============================================================================================='

read -p 'Press enter if you want to switch traffic from blue to green deployment, for exit hit ctrl+C '
echo '--------------------------------------'

#Switching the traffic from blue to green deployment by changing the label of service.

helm upgrade counter-app --set productionSlot=green --reuse-values ./blue-green-deploy-chart-task-8

echo '"Blue green deployment completed, traffic is serving by new deployment."'
