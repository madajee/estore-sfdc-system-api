%dw 2.0
output application/java
fun getPricebookentryId(prdcode) = (vars.pricebookentry filter ($.ProductCode == prdcode))[0].Id
---
vars.opportunityproduct map() -> {
	Product2Id: $.Product2Id,
	Quantity: $.Quantity,
	UnitPrice: $.UnitPrice,
	QuoteId: vars.opportunityquote.items[0].payload.id,
	PricebookEntryId: getPricebookentryId($.ProductCode)
}