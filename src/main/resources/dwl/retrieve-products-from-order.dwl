%dw 2.0
output application/java
var condition1 = "SELECT ID, OrderId, Product2Id, Product2.ProductCode, Quantity, UnitPrice, TotalPrice from OrderItem where 	OrderId = " ++ "'" ++ 	vars.orderrecord[0].Id as String ++ "'"
---
{
	"query" : condition1
}
