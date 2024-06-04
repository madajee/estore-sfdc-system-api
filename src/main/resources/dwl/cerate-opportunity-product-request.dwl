%dw 2.0
output application/java
fun getProductId(prdcode) = (vars.productlist filter ($.ProductCode == prdcode))[0].Id
---
payload.products map() -> {
	Product2Id: getProductId($.productcode),
	Quantity: $.quantity,
	OpportunityId: vars.opportunityrecord[0].Id,
	UnitPrice: 35
}