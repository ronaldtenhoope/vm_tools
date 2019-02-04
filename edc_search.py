#!/usr/bin/python

import requests
from requests.auth import HTTPBasicAuth

edc_url='http://edcvm:6030/access/2/catalog/data/objects'

resp = requests.get(edc_url, auth=HTTPBasicAuth('Administrator', 'Administrator'))
if resp.status_code != 200:
	print('Error getting content {} {}'.format(resp.status_code, resp.content))
	quit()

# Print the count of metadata
print(resp.json()['metadata']["totalCount"])

# Print all itemID's
for item in resp.json()['items']:
	print("ItemID is " + item["id"])

quit()
