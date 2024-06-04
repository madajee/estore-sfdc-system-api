%dw 2.0
output application/json
---
if (vars.opportunityrecord.Id?)
{
  response: {
  	  message: "update opportunity successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Opporutnity with id: " ++ vars.Id as String ++ " doesnot exists",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}