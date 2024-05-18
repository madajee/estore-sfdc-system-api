%dw 2.0
output application/json
---
{
  response: {
  	  message: "get product successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}