# estore-sfdc-system-api

### Test
curl --location 'http://localhost:8081/api/ping'

curl --location 'http://localhost:8081/api/lead' \
--header 'Content-Type: application/json' \
--data '{
    "name": "John Doe Atlanta",
    "leadsource": "web"
}'
