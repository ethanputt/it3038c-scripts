import requests

r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=45209,us&appid=bd12e7c7266fd0fabfa4ba2df7cd919f')

data=r.json()
print(data['weather'][0]['description'])
