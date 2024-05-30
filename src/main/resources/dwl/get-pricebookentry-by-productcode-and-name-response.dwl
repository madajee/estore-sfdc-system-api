%dw 2.0
output application/json
---
{
  response: {
  	  message: "get pricebook entry successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}