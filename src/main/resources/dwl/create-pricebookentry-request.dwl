%dw 2.0
output application/java
---
payload map() -> {
	"IsActive": true,
	"Pricebook2Id": vars.pricebook[0].Id,
	"Product2Id": vars.productbyproductcode[0].Id,
	"CurrencyIsoCode": $.currency,
	"UnitPrice": $.price
}