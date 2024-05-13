# estore-sfdc-system-api

### Test
curl --location 'http://localhost:8081/api/ping'
curl --location 'http://localhost:8081/api/lead?leadname=Bertha%20Boxer'
curl --location 'http://localhost:8081/api/lead/00Q3600000B0rTwEAJ'
curl --location 'http://localhost:8081/api/lead' \
--header 'Content-Type: application/json' \
--data '[
    {
        "firstname": "John-1",
        "lastname": "Doe",
        "company": "Atlanta Products",
        "status": "Open"
    },
    {
        "firstname": "John-2",
        "lastname": "Doe",
        "company": "Atlanta Products",
        "status": "Open"
    }
]'
curl --location 'http://localhost:8081/api/lead?company=Atlanta%20Products'
curl --location 'http://localhost:8081/api/removeleads' \
--header 'Content-Type: application/json' \
--data '{
    "leadidsfordelete": [
        "00QHq00001iiFfOMAU",
        "00QHq00001iiFfPMAU"

    ],
    "callsource": "postman"
}'

curl --location 'http://localhost:8081/api/convertlead' \
--header 'Content-Type: application/json' \
--data '{
    "name": "John-2 Doe",
    "leadsource": "web"
}'

curl --location 'http://localhost:8081/api/removeaccountcontact' \
--header 'Content-Type: application/json' \
--data '{
    "acct_contact_idsfordelete": ["001Hq00003J4xXrIAJ"],
    "callsource": "postman"
}'

SELECT ID, Name FROM Account where ID = '001Hq00003J4xXrIAJ'
SELECT ID, Name FROM Contact where ID = '003Hq00003BYXPcIAP'
SELECT ID, Name, status FROM Lead where Company = 'Atlanta Products'
