%dw 2.0
output application/java
fun getremoveproductcode(prdcode, qty) = (payload.products filter ($.productcode == prdcode and $.quantity == qty))[0].productcode
var orderproductremovelist = (vars.orderproduct map() -> {
    "Id": $.Id,
    "removeproductcode": getremoveproductcode($.Product2.ProductCode, $.Quantity as Number)
}) filter ($.removeproductcode != null)
---
flatten(orderproductremovelist.Id)