
from flask import Flask


#instance of flas application

app = Flask(__name__)

#home route that returns below text when root url is accessed

@app.route ("/")
def hello_world():
    return "<p> Hello, World ! </p>"



@app.route ("/hello")
def func_view():
    return "Second Route"

if __name__ == '__main__':
    app.run()
    