%dw 2.0
output application/java
---
[{
	name: vars.quotename,
	OpportunityId: vars.opportunityrecord[0].Id
}]