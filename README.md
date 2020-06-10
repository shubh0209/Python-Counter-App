# rakuten-proj

Prerequistes to run app in local environment.

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

9. You can access the application on http://127.0.0.1:5000/.
