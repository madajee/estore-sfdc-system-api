%dw 2.0
output application/java
var condition = "(" ++ ((payload.products map () -> "'" ++ $.productcode ++ "'") joinBy (",")) ++ ")"
var condition2 = "AND Pricebook2Id = " ++ "'" ++ vars.orderrecord[0].Pricebook2Id as String ++ "'"
var condition3 = "AND CurrencyIsoCode = " ++ "'" ++ vars.orderrecord[0].CurrencyIsoCode as String ++ "'"
---
{
	"query" : "select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode, Pricebook2Id from PricebookEntry where ProductCode IN "  ++ condition ++ condition2  ++ condition3
}
