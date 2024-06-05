%dw 2.0
output application/json
---
if (vars.opportunityrecord[0].Id != null)
{
  response: {
  	  message: "remove opportunity product successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Either Opporutnity with name: " ++ vars.opportunityname as String ++ " doesnot exists, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}