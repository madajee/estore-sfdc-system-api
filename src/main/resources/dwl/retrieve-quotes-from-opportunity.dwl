%dw 2.0
output application/java
var condition1 = "select Id, name, opportunityId, Opportunity.name from Quote Where OpportunityId = " ++ "'" ++ 	vars.opportunityrecord[0].Id as String ++ "'"
---
{
	"query" : condition1
}
