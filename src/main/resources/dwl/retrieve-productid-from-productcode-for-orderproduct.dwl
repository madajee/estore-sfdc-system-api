%dw 2.0
output application/java
var condition = "(" ++ ((payload.products map () -> "'" ++ $.productcode ++ "'") joinBy (",")) ++ ")"
---
{
	"query" : "SELECT ID, Name, Description, Family, ProductCode, CurrencyIsoCode, IsActive FROM product2 where ProductCode IN "  ++ condition
}
