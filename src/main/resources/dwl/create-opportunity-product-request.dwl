%dw 2.0
output application/java
fun getProductId(prdcode) = (vars.productlist filter ($.ProductCode == prdcode))[0].Id
fun getUnitPrice(prdcode) = (vars.pricebookentrylist filter ($.ProductCode == prdcode))[0].UnitPrice
---
payload.products map() -> {
	Product2Id: getProductId($.productcode),
	Quantity: $.quantity,
	OpportunityId: vars.opportunityrecord[0].Id,
	UnitPrice: getUnitPrice($.productcode)
}