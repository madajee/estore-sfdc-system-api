%dw 2.0
output application/json
---
if (vars.accountrecord[0].Id != null)
{
  response: {
  	  message: "update account successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Account with id: " ++ vars.Id as String ++ " doesnot exists",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}