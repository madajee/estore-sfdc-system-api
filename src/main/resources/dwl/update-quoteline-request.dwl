%dw 2.0
output application/json
var quotelinequantity = payload.quantity as Number default null
var quotelinediscount = payload.discount as Number default null
---
[{
  Id: vars.quotelineitemrecord[0].Id,
  (Quantity: quotelinequantity) if (quotelinequantity != null),
  (Discount: quotelinediscount) if (quotelinediscount != null)  
}]