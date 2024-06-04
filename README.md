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
    "leadsource": "web",
    "doNotCreateOpportunity": true
}'
*************** convert lead to existing account ***************************
curl --location 'http://localhost:8081/api/convertlead' \
--header 'Content-Type: application/json' \
--data '{
    "name": "John-2 Doe",
    "leadsource": "web",
    "accountname": "Atlanta Products",
    "doNotCreateOpportunity": true
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

*************** create 2 products ***************************
curl --location 'http://localhost:8081/api/product' \
--header 'Content-Type: application/json' \
--data '[
    {
        "name": "test-book-1",
        "description": "test book 1",
        "family": "Book"
    },
    {
        "name": "test-book-2",
        "description": "test book 2",
        "family": "Book"
    }
]'

*************** get product by Id ***************************
curl --location 'http://localhost:8081/api/product/01tHq000007wdbKIAQ'

*************** delete products ***************************
curl --location 'http://localhost:8081/api/deleteproducts' \
--header 'Content-Type: application/json' \
--data '{
    "productidsfordelete": [
        "01tHq000007wdbKIAQ",
        "01tHq000007wdbLIAQ"
    ],
    "callsource": "postman"
}'

*************** create 3 products (ABC-SPC-R01, ABC-SPG-01, ABC-SPG-02) ******************

curl --location 'http://localhost:8081/api/product' \
--header 'Content-Type: application/json' \
--data '[
    {
        "name": "ABC-UMS Solar Panel Cleaning Residential",
        "description": "Residential solar panel cleaning service package",
        "family": "Service Packages",
        "productcode": "ABC-SPC-R01",
        "productcurrency": "USD",
        "active": true

    },
    {
        "name": "ABC-SunPower Ground",
        "description": "80-cell ground-mounted solar panel",
        "family": "Panels",
        "productcode": "ABC-SPG-01",
        "productcurrency": "USD",
        "active": true,
        "groundmount": true
    },
    {
        "name": "ABC-GreenSun Ground",
        "description": "60-cell ground-mounted solar panel",
        "family": "Panels",
        "productcode": "ABC-SPG-02",
        "productcurrency": "USD",
        "active": true,
        "groundmount": true
    }
]'

*************** POST /productsbyproductcodelist get products (ABC-SPC-R01, ABC-SPG-01, ABC-SPG-02)  ******************
curl --location 'http://localhost:8081/api/productsbyproductcodelist' \
--header 'Content-Type: application/json' \
--data '{
    "productcodelist": [
        "ABC-SPC-R01",
        "ABC-SPG-01",
        "ABC-SPG-02"
    ],
    "callsource": "postman"
}'

*************** GET /opportunity by Name  ******************
curl --location 'http://localhost:8081/api/opportunity?opportunityname=Saito%20-%20Ground-mounted%20Panels'

*************** Update /opportunity by Id  ******************
curl --location --request PUT 'http://localhost:8081/api/opportunity/006bm000001l4JRAAY' \
--header 'Content-Type: application/json' \
--data '{
    "opportunitypricebook": "Enterprise",
    "opportunitycurrency": "JPY",
    "opportunityamount": "20000"

}'

