
import requests
url = 'http://127.0.0.1:5000/add'
myobj = {'a':2, 'b':4}

x = requests.post(url, json=myobj)

print(x.text)
