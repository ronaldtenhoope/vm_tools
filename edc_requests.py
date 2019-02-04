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
#for item in resp.json()['items']:
#	print("ItemID is " + item["id"])

# Let's go through the facts of the first item
#first_item = resp.json()['items'][1]
#print(first_item['id'])

#first_item_facts = first_item['facts']
#for fact in first_item_facts:
#	print("attributeID is " + fact['attributeId'])
#	print("Value is " + fact['value'])

# Find an item!
for item in resp.json()['items']:
	if (item["id"] == "DIS_EDC_1021://DIS_EDC_1021/Application/app_Lineage/Mapping/m_TestLineage/Transformation/Write_FACTPRODUCTSALES_Group_cast/Group/Write_FACTPRODUCTSALES_Group_cast/Field/SALESTIMEKEY"):
		my_item = item

print(my_item["id"])
print(my_item["srcLinks"][0]["association"])
print(my_item["srcLinks"][0]["id"])
print(my_item["srcLinks"][0]["readOnly"])
print

# Find another item!
for item in resp.json()['items']:
	if (item["id"] == "DIS_EDC_1021://DIS_EDC_1021/Application/app_Lineage/Mapping/m_TestLineage/Transformation/Write_FACTPRODUCTSALES_Group_cast/Group/Write_FACTPRODUCTSALES_Group_cast/Field/SALESTIMEKEY"):
		my_item = item

print(my_item["id"])
print(my_item["srcLinks"][0]["association"])
print(my_item["srcLinks"][0]["id"])
print(my_item["srcLinks"][0]["readOnly"])

