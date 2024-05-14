%dw 2.0
output application/json
---
{
  response: {
  	  message: "get lead with static query successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}