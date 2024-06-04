%dw 2.0
output application/json
var opportunityamount = payload.opportunityamount as Number default null
---
[{
  Id: vars.Id,
  Pricebook2Id: vars.pricebook[0].Id,
  CurrencyIsoCode: payload.opportunitycurrency,
  (Amount: opportunityamount) if (opportunityamount != null)
}]