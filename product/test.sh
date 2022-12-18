#!/bin/bash

curl -sSf -u "admin:=[;.,lp-0oKM" \
    -O 'http://18.204.195.105:8082/artifactory/lidar/com/lidar/analytics/1.0.0/analytics-1.0.0.jar'

curl -sSf -u "admin:=[;.,lp-0oKM" \
    -O 'http://18.204.195.105:8082/artifactory/lidar/com/lidar/telemetry/1.0.0/telemetry-1.0.0.jar'

curl -sSf -u "admin:=[;.,lp-0oKM" \
    -O 'http://18.204.195.105:8082/artifactory/lidar/com/lidar/simulator/1.0.0/simulator-1.0.0.jar'

echo 'Sanity test A\n' > tests.txt
echo 'Sanity test B\n' >> tests.txt
echo 'Sanity test C\n' >> tests.txt
sleep 2
  
java -cp simulator-1.0.0.jar:analytics-1.0.0.jar:telemetry-1.0.0.jar:. com.lidar.simulation.Simulator
echo '******************************Done Downloading*************************'

                