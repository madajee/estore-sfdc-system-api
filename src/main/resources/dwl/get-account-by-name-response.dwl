%dw 2.0
output application/json
---
{
  response: {
  	  message: "get account successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}