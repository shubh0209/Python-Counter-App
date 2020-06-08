import flask 
import git
import socket

count = 0

api = flask.Flask(__name__)

@api.route('/')
def hello():
    return flask.redirect('/info')

@api.route('/counter', methods=['GET'])
def get_counter():
  global count
  count = count + 1
  return "<h1> Hi, Welcome to counter</h1> <br/> {}".format(count)

@api.route('/counter', methods=['POST'])
def add_counter():
  global count
  count = count + 2
  return {'count': count}, 200

@api.route('/counter', methods=['DELETE'])
def delete_counter():
  global count
  count = count - 1
  return {'count': count}, 200

@api.route('/info', methods=['GET'])
def get_info():
  repo = git.Repo(search_parent_directories=True)
  sha = repo.head.object.hexsha
  branch = repo.active_branch
  hostname = socket.gethostname()
  return "<h1> Hi, Welcome to info </h1>Latest commit hash : {1} <br/> Active branch : {2} <br/> Hostname : {3}".format(sha, branch, hostname)




if __name__ == '__main__':
    api.run(debug=True)