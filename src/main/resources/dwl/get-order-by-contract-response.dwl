%dw 2.0
output application/json

---
if (vars.orders[0].Id != null)
{
  response: {
		  	  message: "get order by contract successful",
		  	  payload:  vars.orders 
		}
} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Orders for contract: " ++ vars.queryparameters.contractnumber as String ++ " doesnot exists, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}