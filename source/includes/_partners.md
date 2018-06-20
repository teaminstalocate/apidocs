# Partners Admin

To create, update and delete a partner.

API End Point : ```/partners```

Examples: 

* Production: ```https://partners-prod-api.instalocate.com/v1/partners```
* Test: ```https://partners-test-api.instalocate.com/v1/partners```
 

### Register a new partner

Register a new partner using ```mode=register_partner```

#### Post Parameters

Parameter | Value | Description | Required?
--------- | ------- | ----------- | -----------
`mode` | `register_partner ` | This mode is used for adding new partners | Required
`params` | Dictionary of values | See below for the details | Required

#### `params` values

Parameter |  Description |  Required?
--------- | ----------- | -----------
`name ` | Name of the partner  | Required
`webhook ` | Webhook for API callbacks. Ignore this if callbacks are not required. You can update this later on  | Optional

> Example for registering a new partner:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/partners \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
	"mode": "register_partner",
		"params": {
			"name": "Partner ABC",    
			"webhook": "https://www.travel.com/api_webhook"		}
	}'
```

### Get partner information

Get the saved partner information `mode=get_partner_info`

#### Post Parameters

Parameter | Value | Description | Required?
--------- | ------- | ----------- | -----------
`mode` | `get_partner_info ` | This mode is used to get partner information | Required
`params` | Dictionary of params values | See below for the details | Required

#### `params` values

Parameter |  Description |  Required?
--------- | ----------- | -----------
`partner_id` | Partner id  | Required


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

Parameter | Value | Description | Required?
--------- | ------- | ----------- | -----------
`mode` | `get_partner_info ` | This mode is used to get partner information | Required
`params` | Dictionary of partner values | See below for the details | Required

#### `params` values

Parameter |  Description |  Required?
--------- | ----------- | -----------
`partner_id` | Partner id  | Required
`meta_data` | Dictionary containing values | Required

#### `meta_data` values

Parameter |  Description |  Required?
--------- | ----------- | -----------
`name` | Partner Name  | Optional
`webhook` | API Webhook url | Optional


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

Parameter | Value | Description | Required?
--------- | ------- | ----------- | -----------
`mode` | `delete_partner ` | This mode is used to delete a partner | Required
`params` | Dictionary of partner values | See below for the details | Required

#### `params` values

Parameter |  Description |  Required?
--------- | ----------- | -----------
`partner_id` | Partner id  | Required


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