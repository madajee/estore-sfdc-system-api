%dw 2.0
output application/java
var condition1 = "select Id, Product2.name, Quantity, QuoteId from QuoteLineItem Where QuoteId IN "
var condition2 = "(" ++ ((vars.opportunityquotes map () -> "'" ++ $.Id ++ "'") joinBy (",")) ++ ")"
---
{
	"query" : condition1 ++ condition2
}
