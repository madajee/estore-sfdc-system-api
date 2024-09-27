%dw 2.0
output application/json
---
if (vars.quotelineitemrecord.Id?)
{
  response: {
  	  message: "update quote line successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Quote with id: " ++ vars.quotelineitemrecord[0].Id as String ++ " doesnot exists",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}