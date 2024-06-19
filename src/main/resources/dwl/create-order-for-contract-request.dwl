%dw 2.0
output application/java
---
[
{
	"AccountId": vars.contractrecord[0].AccountId,
	"EffectiveDate": vars.contractrecord[0].StartDate as Date {format: "yyyy-MM-dd"},
	"ContractId": vars.contractrecord[0].Id,
	"OpportunityId": vars.opportunityrecord[0].Id,
	"Pricebook2Id": vars.opportunityrecord[0].Pricebook2Id,
	"Status": 'Draft'
}]