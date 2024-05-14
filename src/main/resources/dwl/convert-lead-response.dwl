%dw 2.0
output application/json
---
{
  response: {
  	  message: "convert lead successful",
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}