import json
import requests

r = requests.get("http://localhost:3000")
data = r.json()

for d in range(len(data)):
    print("%s is %s." % (data[d]["color"]))
