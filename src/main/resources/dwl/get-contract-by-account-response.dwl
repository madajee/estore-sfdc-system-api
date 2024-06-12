%dw 2.0
output application/json
---
if (vars.accountrecord[0].Id != null)
{
  response: {
  	  message: "get contracts by account successful",
  	  payload:  vars.contracts 
  }
} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Account with name: " ++ vars.queryparameters.accountname as String ++ " doesnot exists, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}