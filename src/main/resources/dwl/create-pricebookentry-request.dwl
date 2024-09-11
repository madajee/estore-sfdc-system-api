%dw 2.0
output application/java
---
[{
	"IsActive": true,
	"Pricebook2Id": vars.pricebook[0].Id,
	"Product2Id": vars.productbyproductcode[0].Id,
	"CurrencyIsoCode": payload.currency,
	"UnitPrice": payload.price
}]