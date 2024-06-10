%dw 2.0
output application/json
---
if (vars.opportunityrecord[0].Id != null)
{
  response: {
  	  message: "create opportunity quote successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Opporutnity with name: " ++ vars.opportunityname as String ++ " doesnot exists, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}