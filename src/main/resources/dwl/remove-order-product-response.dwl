%dw 2.0
output application/json
---
if (vars.orderrecord[0].Id != null and payload.successful == true)
{
  response: {
  	  message: "remove order product successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Order with order number: " ++ vars.ordernumber as String ++ " doesnot exists." ++ " Another cause can be either Order doesnt have order products or none of the order product in the request doesnt match on product code and quantity, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}