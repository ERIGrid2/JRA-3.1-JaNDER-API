import json
import requests

url = "http://localhost:8080/channel"

payload = {
    'id': 'FloatTest',
    'payload': 'samples',
    'description': 'test',
    'range': '{"min":34.2, "max":54.4}',
    'readable': 'true',
    'writable': 'true',
    'datatype': 'float',
    'unit': 'V',
    'source': 'unknown',
    'rate': 'unknown'
}
files=[]

headers = {}

response = requests.request("PUT", url, headers=headers, json=payload, files=files)

print(response.text)