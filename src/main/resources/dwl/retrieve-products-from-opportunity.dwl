%dw 2.0
output application/java
var condition1 = "SELECT ID, Name, Product2Id, ProductCode, Quantity, UnitPrice, TotalPrice from OpportunityLineItem where OpportunityId = " ++ "'" ++ 	vars.opportunityrecord[0].Id as String ++ "'"
var condition2 = " AND ProductCode IN " ++ "(" ++ ((payload.products map () -> "'" ++ $.productcode ++ "'") joinBy (",")) ++ ")"
var condition3 = " AND Quantity IN " ++ "(" ++ ((payload.products map () ->  $.quantity) joinBy (",")) ++ ")"
---
{
	"query" : condition1 ++ condition2  ++ condition3
}
