# Partners Admin

To create, update and delete a partner.

API End Point : ```/partners```

Examples: 

* Production: ```https://partners-prod-api.instalocate.com/v1/partners```
* Test: ```https://partners-test-api.instalocate.com/v1/partners```
 

### Register a new partner

Register a new partner using ```mode=register_partner```

#### Post Parameters

Parameter | Value | Description
--------- | ------- | -----------
mode | `register_partner` | This is required.
params | dictionary of values | Specify meta data like name, webhook etc.

> Example for registering a new partner:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/partners \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
	"mode": "register_partner",
		"params": {
			"meta_data": {
			"name": "Partner ABC",    
			"webhook": "https://www.travel.com/api_webhook"
		}
	}
}'
```


### Get partner information

Get the saved partner information `mode=get_partner_info`

#### Post Parameters

Parameter | Value | Description
--------- | ------- | -----------
mode | `get_partner_info` | This is required.
params | dictionary containing partner_id | Should contain partner_id

> Example for getting partner information:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/partners \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
	"mode": "get_partner_info",
		"params": {
			"partner_id": "575a4ef4-9eef-4f51-ac9d-d44c9126da9c"
	}
}'
```
### Update partner information

Update the partner information 

#### Post Parameters

Parameter | Value | Description
--------- | ------- | -----------
mode | `update_partner` | This is required.
params | dictionary of values | Should contain partner_id and updated values in `meta_data` field

> Example for updating an existing partner information:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/partners \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
	"mode": "update_partner",
		"params": {
			"partner_id": "575a4ef4-9eef-4f51-ac9d-d44c9126da9c",
			"meta_data": {
				"webhook": "https://www.travel.com/webhook"
			}
	}
}'
```

### Delete partner

Delete a partner

#### Post Parameters

Parameter | Value | Description
--------- | ------- | -----------
mode | `delete_partner` | This is required.
params | dictionary of values | Should contain partner_id 

> Example for deleting a partner

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/partners \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
	"mode": "delete_partner",
		"params": {
			"partner_id": "575a4ef4-9eef-4f51-ac9d-d44c9126da9c",
	}
}'
```