# Bookings

This API is used to create booking information.

API End Point : ```/bookings```

Examples: 

* Production: ```https://partners-prod-api.instalocate.com/v1/bookings ```
* Test: ```https://partners-test-api.instalocate.com/v1/bookings ```
 

### Create a new booking

Create a new booking using ```mode=add_bookings```

#### Post Parameters

Parameter | Value | Description | Required?
--------- | ------- | ----------- | -----------
`mode` | `add_booking` | This mode is used for adding new bookings. | Required
`params` | Dictionary of booking values | See below for the details | Required

#### Booking Value

Parameter |  Description |  Required?
--------- | ----------- | -----------
`partner_id` | This partner id is given at the time of giving API access  | Required
`partner_booking_unique_id` | This is a unique booking id of the partner. For example: PNR, ticket number. This has to be a unique value | Required
flights | An array of flights of a given booking. See below for the individual flight structure | Required

#### Individual Flight

Parameter |  Description |  Required?
--------- | ----------- | -----------
`airline_code` | Airline Code e.g. BA | Required
`flight_number` | Flight number: 123, 123A (it can contain alphabets). | Required
`departure_date` | Date of departure in YYYY-MM-DD format. Example: 2018-05-18 | Required
`source_airport` | Source Airport Code (e.g. LHR) | Required
`destination_airport` | Source Airport Code (e.g. JFK) | Required
`partner_flight_unique_id` | To uniquely identify a flight. This value will be passed back in the API response.  | Optional

> Example for creating a new booking:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/bookings \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
		{
	"mode": "add_booking",
	"params": {
		"partner_id": "d4e1d8e1-08ea-4cc0-8b3b-bf52cb8265c1",
		"partner_booking_unique_id": "d1e1d8e3-08ea-4cc0-8b3b-bf52cb8265c1",
		"flights": [ 
				{
					"airline_code": "BA",
	            	"flight_number": "10",
	            	"departure_date": "2018-11-11",
	            	"source_airport": "DEL",
	            	"destination_airport": "LHR"
	            	"partner_flight_unique_id": "123123"
				}
			]
		}
	}
}'
```

### Booking's latest status
Get the latest status of an existing booking using ```mode=latest_status_bookings```

#### Post Parameters

Parameter | Value | Description | Description
--------- | ------- | ----------- | -----------
`mode` | `latest_status_booking` | This mode is used to get the latest information | Required
`params` | Dictionary of partner and booking unique ids | See below for the details | Required

#### Partner and Booking Unique IDs Dictionary

Parameter |  Description |  Required?
--------- | ----------- | -----------
`partner_id` | This partner id is given at the time of giving API access  | Required
`partner_booking_unique_id` | This is a unique booking id of the partner. For example: PNR, ticket number. This has to be a unique value | Required

> Example for getting the latest status of a booking:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/bookings \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
		{
	"mode": "latest_status_booking",
	"params": {
		"partner_id": "d4e1d8e1-08ea-4cc0-8b3b-bf52cb8265c1",
		"partner_booking_unique_id": "d1e1d8e3-08ea-4cc0-8b3b-bf52cb8265c1"
	}
}'
```

### Update a booking

You can change the flight information for a given booking id. In order to update a given booking id, first delete the existing booking and create a new booking with the updated flight numbers. 

### Delete a booking

Delete an existing booking using ```mode=delete_bookings```

#### Post Parameters

Parameter | Value | Description | Description
--------- | ------- | ----------- | -----------
`mode` | `delete_booking` | This mode is used to delete a given booking | Required
`params` | Dictionary of partner and booking unique ids | See below for the details | Required

#### Partner and Booking Unique IDs Dictionary

Parameter |  Description |  Required?
--------- | ----------- | -----------
`partner_id` | This partner id is given at the time of giving API access  | Required
`partner_booking_unique_id` | This is a unique booking id of the partner. For example: PNR, ticket number. This has to be a unique value | Required


> Delete an existing booking:

```shell 
curl --request POST \
  --url https://partners-test-api.instalocate.com/v1/bookings \
  --header 'Content-Type: application/json' \
  --header 'x-api-key: i346dbQMao3Q6OfP9wMFr4DlkdAyniNu1atcUFGG' \
  --data '{
	"mode": "delete_booking",
	"params": {
		"partner_id": "d4e1d8e1-08ea-4cc0-8b3b-bf52cb8265c1",
		"partner_booking_unique_id": "d1e1d8e3-08ea-4cc0-8b3b-bf52cb8265c1"
	}
}'
```