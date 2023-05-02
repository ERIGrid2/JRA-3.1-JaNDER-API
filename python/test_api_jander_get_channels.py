import requests

url = "http://localhost:8080/channels"

payload={}
headers = {}

response = requests.request("GET", url, headers=headers, data=payload)

print(response.text)
