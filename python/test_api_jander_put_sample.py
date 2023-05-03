import json
import requests

url = "http://localhost:8080/channel/RSE_test/sample"

payload = {
    'timestamp': '16183108858',
    'timesource': 'synchronized',
    'value': '34.2',
    'validity': 'unknown',
    'source': 'unknown'
}
files=[]

headers = {}

response = requests.request("PUT", url, headers=headers, json=payload, files=files)

print(response.text)
