%dw 2.0
output application/json
---
if (vars.opportunityrecord[0].Id != null and vars.opportunityrecord[0].Pricebook2Id != null)
{
  response: {
  	  message: "create opportunity product successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Either Opporutnity with name: " ++ vars.opportunityname as String ++ " doesnot exists or pricebook is not chosen for opportunity, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}