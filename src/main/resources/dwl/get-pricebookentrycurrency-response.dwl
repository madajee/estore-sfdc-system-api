%dw 2.0
output application/json
var successmessage1 = "get pricebook entry successful with "
var successmessage2 = " product code: " ++ vars.queryparameters.productcode ++ " "
var successmessage3 = " pricebook name: " ++ vars.queryparameters.pricebookname ++ " "
var successmessage4 = " currency code: " ++ vars.queryparameters.currencycode ++ " "
var successmessage = successmessage1 ++ (if (vars.queryparameters.productcode != null) successmessage2 else '') ++ (if (vars.queryparameters.pricebookname != null) successmessage3 else '') ++ (if (vars.queryparameters.currencycode != null) successmessage4 else '') 
---
{
  response: {
  	message: successmessage,
  	payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}