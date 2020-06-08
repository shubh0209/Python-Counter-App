from flask import Flask, json
import git

companies = [{"id": 1, "name": "Company One"}, {"id": 2, "name": "Company Two"}]
count = 1

api = Flask(__name__)

@api.route('/counter', methods=['GET'])
def get_counter():
  #count = count + 1
  #return json.dumps(companies)
  return "<h1> Hi, Welcome to counter</h1> <br> {}".format(count)

@api.route('/info', methods=['GET'])
def get_info():
  #count = count + 1
  #return json.dumps(companies)
  repo = git.Repo(search_parent_directories=True)
  sha = repo.head.object.hexsha
  branch = repo.active_branch
  return "<h1> Hi, Welcome to info </h1> <br/> Repo Name : {0} <br/> latest commit hash : {1} <br/> Active branch : {2}".format(repo,sha, branch)




if __name__ == '__main__':
    api.run(debug=True)