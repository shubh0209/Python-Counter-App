from flask import Flask, json

companies = [{"id": 1, "name": "Company One"}, {"id": 2, "name": "Company Two"}]
count = 1

api = Flask(__name__)

@api.route('/counter', methods=['GET', 'PUT', 'DELETE'])
def get_companies():
  #count = count + 1
  #return json.dumps(companies)
  return "<h1> Hi, Welcome </h1> <br> {}".format(count)




if __name__ == '__main__':
    api.run(debug=True)