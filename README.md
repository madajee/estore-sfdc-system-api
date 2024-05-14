# estore-sfdc-system-api

### Test
*************** ping ***************************
curl --location 'http://localhost:8081/api/ping'

*************** create 2 leads ***************************
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

*************** get 10 random leads ***************************
curl --location 'http://localhost:8081/api/lead'
*************** get lead by lead name ***************************
curl --location 'http://localhost:8081/api/lead?leadname=John-1%20Doe'
*************** get leads by company ***************************
curl --location 'http://localhost:8081/api/lead?company=Atlanta%20Products'
*************** get lead by id ***************************
curl --location 'http://localhost:8081/api/lead/00Q3600000B0rTwEAJ'
*************** convert lead ***************************
curl --location 'http://localhost:8081/api/convertlead' \
--header 'Content-Type: application/json' \
--data '{
    "name": "John-1 Doe",
    "leadsource": "web"
}'
*************** deleteaccountcontact ***************************
curl --location 'http://localhost:8081/api/deleteaccountcontact' \
--header 'Content-Type: application/json' \
--data '{
    "acct_contact_idsfordelete": ["001Hq00003J503CIAR"],
    "callsource": "postman"
}'
*************** deleteleads ***************************
curl --location 'http://localhost:8081/api/deleteleads' \
--header 'Content-Type: application/json' \
--data '{
    "leadidsfordelete": [
        "00QHq00001iiGoiMAE",
        "00QHq00001iiGojMAE"
    ],
    "callsource": "postman"
}'
*************** get-lead-by-leadname (static query) ***************************
curl --location 'http://localhost:8081/api/leadstaticquery?leadname=Bertha%20Boxer'

*************** get-lead-by-company (static query) ***************************
curl --location 'http://localhost:8081/api/leadstaticquery?company=Farmers%20Coop.%20of%20Florida'

SELECT ID, Name FROM Account where ID = '001Hq00003J4xXrIAJ'
SELECT ID, Name FROM Contact where ID = '003Hq00003BYXPcIAP'
SELECT ID, Name, status FROM Lead where Company = 'Atlanta Products'
