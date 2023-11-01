
from flask import Flask,request

app = Flask(__name__)


@app.route("/add", methods = ["POST"])
def add():
    a= request.json['a']
    b = request.json['b']
    return {"sum" : int (a)+ int (b)}
    
@app.route("/sub", methods = ["POST"])
def sub(a, b):
    a= request.json['a']
    b = request.json['b']
    return {"sum" : int (a)- int (b)}
    
@app.route("/div", methods = ["POST"])   
def division(a, b):
    a= request.json['a']
    b = request.json['b']
    return {"sum" : float (a)/ float (b)}
    
@app.route("/mul", methods = ["POST"])   
def multiplication(a, b):
    a= request.json['a']
    b = request.json['b']
    return {"sum" : float (a)* float (b)}
    
if __name__ == '__main__':
    app.run()
    