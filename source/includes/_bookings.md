# Bookings

This API is used to create booking information.

API End Point : ```/bookings```

Examples: 

* Production: ```https://partners-prod-api.instalocate.com/v1/bookings ```
* Test: ```https://partners-test-api.instalocate.com/v1/bookings ```
 

### Create a new booking

Create a new booking using ```mode=add_bookings```

#### Post Parameters

Parameter | Value | Description
--------- | ------- | -----------
mode | `add_bookings` | This is required.
params | dictionary of values | Specify partner_booking_uid, and array of flights information

> Example for creating a new booking:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/bookings \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
		{
	"mode": "add_bookings",
	"params": {
		"partner_id": "d4e1d8e1-08ea-4cc0-8b3b-bf52cb8265c1",
		"partner_booking_uid": "d1e1d8e3-08ea-4cc0-8b3b-bf52cb8265c1",
		"flights": [ 
				{
					"airline_code": "BA",
	            	"flight_number": "10",
	            	"departure_date": "2018-11-11",
	            	"source_airport": "DEL",
	            	"destination_airport": "LHR"
					}
			]
		}
	}
}'
```


### Booking's latest status
Get the latest status of an existing booking using ```mode=latest_status_bookings```

#### Post Parameters

Parameter | Value | Description
--------- | ------- | -----------
mode | `latest_status_bookings` | This is required.
params | dictionary of values | Specify instalocate_booking_id.

> Example for getting the latest status of a booking:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/bookings \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
		{
	"mode": "add_bookings",
	"params": {
		"partner_id": "d4e1d8e1-08ea-4cc0-8b3b-bf52cb8265c1",
		"instalocate_booking_uids": ["c494a92d-09a9-4806-9223-ec7bae4acd28"],
	}
}'
```

### Delete a booking

Delete an existing booking using ```mode=delete_bookings```

#### Post Parameters

Parameter | Value | Description
--------- | ------- | -----------
mode | `delete_bookings` | This is required.
params | dictionary of values | Specify instalocate_booking_id.

> Delete an existing booking:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/bookings \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
	"mode": "delete_bookings",
		"params": {
			"instalocate_booking_uid": "c494a92d-09a9-4806-9223-ec7bae4acd28"
	}
}'
```