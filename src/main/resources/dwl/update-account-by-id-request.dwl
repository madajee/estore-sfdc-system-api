%dw 2.0
output application/json
var accountcurrency = payload.accountcurrency as String default null
---
[{
  Id: vars.Id,
  (CurrencyIsoCode: accountcurrency) if (accountcurrency != null)
}]