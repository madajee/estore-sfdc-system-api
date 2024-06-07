%dw 2.0
output application/java
var condition1 = "select Id, Product2.name, Quantity from QuoteLineItem Where QuoteId = " ++ "'" ++ vars.opportunityquotes[0].Id as String ++ "'"
---
{
	"query" : condition1
}
