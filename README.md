# Python-Counter-App

##### Prerequistes to run app in local environment.

1. Python3 should be installed.
2. Redis server should be running on localhost/remote host.
   - Change the connection string to localhost/IP address of remote server in the api.py file
3. Pip should be installed
    -  (on Ubuntu machine) sudo apt-get install python3-pip python-dev
4. Install dependencies on local machine.
    - pip install flask
    - pip install gitpython
    - pip install redis
6. git should be initialised in the project directory.
7. POSTMAN is required for POST and DELETE request to API.
8. Run the app in local environment using below command.
   -  python3 api.py

9. The application can be accessed on http://127.0.0.1:5000/

### Scripts:
- [init.sh](https://github.com/shubh0209/rakuten-proj/blob/master/init.sh)- will build the docker image using git's last commit as tag.
- [task7.sh](https://github.com/shubh0209/rakuten-proj/blob/master/task7.sh) - Will deploy the helm chart to target environment, assuming there are only two targets available (default and prod),
           both are namespaces to same cluster.
- [task8.sh](https://github.com/shubh0209/rakuten-proj/blob/master/task8.sh) - Will deploy blue-green deployment, assuming no deployment is running, will start with deploying the older application 
           as running deployment and install the newer version using blue-green strategy.
- [changepodcount.sh](https://github.com/shubh0209/rakuten-proj/blob/master/changepodcount.sh) - Will increase or decrease the no of pods in the blue-green deployment chart.
