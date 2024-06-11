%dw 2.0
output application/java
var condition1 = "select Id, Name, CurrencyIsoCode, UnitPrice, ProductCode, Pricebook2.Name from PricebookEntry"
var condition2 = " WHERE Pricebook2Id = " ++ "'" ++ vars.opportunityrecord[0].Pricebook2Id ++ "'"
var condition3 = " AND ProductCode IN " ++ "(" ++ ((vars.opportunityproduct map () -> "'" ++ $.ProductCode ++ "'") joinBy (",")) ++ ")"
var condition4 = " AND CurrencyIsoCode = " ++ "'" ++ vars.opportunityrecord[0].CurrencyIsoCode ++ "'"
var condition = condition1 ++ condition2 ++ condition3 ++ condition4
---
{
	"query" : condition
}