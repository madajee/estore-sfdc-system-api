%dw 2.0
output application/java
var condition = "(" ++ ((payload.productcodelist map () -> "'" ++ $ ++ "'") joinBy (",")) ++ ")"
---
{
	"query" : "SELECT ID, Name, Description, Family, ProductCode, CurrencyIsoCode, IsActive FROM product2 where ProductCode IN "  ++ condition
}
