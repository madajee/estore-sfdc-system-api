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

*************** create-opportunity-product  ******************
curl --location 'http://localhost:8081/api/opportunity/product' \
--header 'Content-Type: application/json' \
--data '{
    "opportunityname": "Saito - Ground-mounted Panels",
    "products": [
        {
            "productcode": "SPG-01",
            "quantity": 35
        },
        {
            "productcode": "SPG-02",
            "quantity": 20
        }
    ]
}'

*************** remove-opportunity-product  ******************
curl --location 'http://localhost:8081/api/opportunity/removeproduct' \
--header 'Content-Type: application/json' \
--data '{
    "opportunityname": "Saito - Ground-mounted Panels",
    "products": [
        {
            "productcode": "SPG-01",
            "quantity": 35
        },
        {
            "productcode": "SPG-02",
            "quantity": 20
        }
    ]
}'

*************** GET /opportunity/quote by Opportunity Name  ******************
curl --location 'http://localhost:8081/api/opportunity/quote?opportunityname=Saito%20-%20Ground-mounted%20Panels'

*************** POST /opportunity/quote by Opportunity Name  ******************
curl --location 'http://localhost:8081/api/opportunity/quote' \
--header 'Content-Type: application/json' \
--data '{
    "opportunityname": "Saito - Ground-mounted Panels",
    "quotename": "80 Cell Ground-mounted Panels"
}'

*************** POST /deletequotes  ******************
curl --location 'http://localhost:8081/api/deletequotes' \
--header 'Content-Type: application/json' \
--data '{
    "quoteidsfordelete": [
        "0Q0bm0000003kj3CAA",
        "0Q0bm0000003khRCAQ"
    ],
    "callsource": "postman"
}'

*************** GET /contracts  ******************
curl --location 'http://localhost:8081/api/account/contract?accountname=Boy%20Scouts%20of%20the%20Southwest'

*************** GET /contracts  ******************
curl --location 'http://localhost:8081/api/account/contract?accountname=Saito%20Family%20Laundromats'

*************** Create /account/contracts  ******************
curl --location 'http://localhost:8081/api/account/contract' \
--header 'Content-Type: application/json' \
--data '{
    "accountname": "Boy Scouts of the Southwest",
    "contracts": [
        {
            "contractstartdate": "07-02-2024",
            "contractterm": "12"
        }
    ]
}'

*************** Delete /account/contracts  ******************
curl --location 'http://localhost:8081/api/deletecontracts' \
--header 'Content-Type: application/json' \
--data '{
    "contractidsfordelete": [
        "800bm000007GXonAAG",
        "800bm0000071qi6AAA"
    ],
    "callsource": "postman"
}'

*************** Get orders by contractnumber  ******************
curl --location 'http://localhost:8081/api/order?contractnumber=00000110'

*************** Create order for contract and opportunity  ******************
curl --location 'http://localhost:8081/api/order' \
--header 'Content-Type: application/json' \
--data '{
    "contractnumber": "00000110",
    "opportunityname": "BSofSW - Ground-mounted Panels"
}'

*************** Delete orders  ******************
curl --location 'http://localhost:8081/api/deleteorders' \
--header 'Content-Type: application/json' \
--data '{
    "orderidsfordelete": [
        "801bm00000DhN6lAAF",
        "801bm00000DilrlAAB",
        "801bm00000DgyDCAAZ"
    ],
    "callsource": "postman"
}'

*************** create-order-product  ******************
curl --location 'http://localhost:8081/api/order/product' \
--header 'Content-Type: application/json' \
--data '{
    "ordernumber": "00000110",
    "products": [
        {
            "productcode": "SPG-01",
            "quantity": 35
        },
        {
            "productcode": "SPG-02",
            "quantity": 20
        }
    ]
}'
*************** e2e steps  ******************
1. Create Lead
2. Create Product (Service Package and 2 Panels)
3. Create Pricebook Entries for all 3 products with Standard Pricebook and all 5 currencies.
4. Create pricebook entry for both the panel with Enterprise Price Book in JPY and SGD currency.
5. Create pricebook entry for both the panel with Nonprofit Price Book in USD and GBP currency.
6. Convert John Doe who works for ‘Boy Scouts of the Southwest’ by passing in opportunity name as ‘BSofSW - Ground-mounted Panels’. Validate that account, opportunity and contact is created through conver lead automation step.
7. Convert Jane Doe who works for ‘Saito Family Laundromats’ by passing in opportunity name as ‘Saito - Ground-mounted Panels’. Validate that account, opportunity and contact is created through convert lead automation step.
8. Update ‘BSofSW - Ground-mounted Panels’ opportunity with Nonprofit pricebook and opportunity amount of 20000 USD. Then use automation to add 20 quantity of GreenSun Ground to the opportunity. 
9. Update account currency for ‘Saito Family Laundromats’ account to ‘JPY’. Then update ‘Saito - Ground-mounted Panels’ opportunity with Enterprise pricebook and opportunity amount of 4200000 JPY. Then use automation to add 35 quantity of SunPower ground and 20 quantity of GreenSun Ground to the opportunity.


