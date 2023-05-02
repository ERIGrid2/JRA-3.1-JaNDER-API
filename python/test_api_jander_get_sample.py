import requests

url = "http://localhost:8080/channel/RSE_test3/sample"

payload={}
headers = {}

response = requests.request("GET", url, headers=headers, json=payload)

print(response.text)

