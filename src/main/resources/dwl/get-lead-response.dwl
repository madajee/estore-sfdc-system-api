%dw 2.0
output application/json
var successmessage =  if (vars.queryparameters.leadname != null)
"get lead successful for " ++ vars.queryparameters.leadname
else if (vars.queryparameters.company != null) 
"get lead successful for " ++ vars.queryparameters.company
else "retrieve ten random leads"
---
{
  response: {
  	message: successmessage,
  	payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}