%dw 2.0
output application/json
---
if (vars.contractrecord[0].Id != null)
{
  response: {
  	  message: "create order for contract successful",
  	  payload:  payload 
  }
} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Contract with number: " ++ vars.queryparameters.contractnumber as String ++ " doesnot exists, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}