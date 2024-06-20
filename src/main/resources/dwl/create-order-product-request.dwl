%dw 2.0
output application/java
fun getProductId(prdcode) = (vars.productlist filter ($.ProductCode == prdcode))[0].Id
fun getUnitPrice(prdcode) = (vars.pricebookentrylist filter ($.ProductCode == prdcode))[0].UnitPrice
fun getPricebookentryId(prdcode) = (vars.pricebookentrylist filter ($.ProductCode == prdcode))[0].Id
---
payload.products map() -> {
	Product2Id: getProductId($.productcode),
	Quantity: $.quantity,
	OrderId: vars.orderrecord[0].Id,
	UnitPrice: getUnitPrice($.productcode),
	PricebookEntryId: getPricebookentryId($.productcode)
}