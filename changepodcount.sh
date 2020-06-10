#!/bin/bash
######Assuming counter-app chart is already installed in cluster


replicacount () {
read -p 'Enter the number of pods required: ' count
number=replicaCount=$count
helm upgrade counter-app --set $number --reuse-values ./blue-green-deploy-chart-task-8
}

replicacount
