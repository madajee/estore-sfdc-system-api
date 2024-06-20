%dw 2.0
output application/java
---
payload.contracts map() ->
{
	"AccountId": vars.accountrecord[0].Id,
	"StartDate": $.contractstartdate as Date {format: "MM-dd-yyyy"},
	"ContractTerm": $.contractterm as Number,
	"CurrencyIsoCode": vars.accountrecord[0].CurrencyIsoCode
}