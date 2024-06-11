%dw 2.0
output application/java
var condition1 = "SELECT ID, Name, Product2Id, ProductCode, Quantity, UnitPrice, TotalPrice from OpportunityLineItem where OpportunityId = " ++ "'" ++ 	vars.opportunityrecord[0].Id as String ++ "'"
---
{
	"query" : condition1
}
