%dw 2.0
output application/json
var condition1 = "select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode, Pricebook2.Name from PricebookEntry"
var condition2 = " WHERE Pricebook2Id = " ++ "':pricebookid'"
var condition3 = " AND ProductCode = " ++ "':productcode'"
var condition4 = " AND CurrencyIsoCode = " ++ "':currencycode'"
var condition5 = " LIMIT 10"
var condition = condition1 ++ (if (vars.pricebook[0].Id != null) condition2 else '') ++ (if (vars.queryparameters.productcode != null) condition3 else '') ++ (if (vars.queryparameters.currencycode != null) condition4 else '') ++ (if (vars.queryparameters.productcode == null and vars.queryparameters.currencycode == null) condition5 else '') 
---
{
	"query" : condition
}
	