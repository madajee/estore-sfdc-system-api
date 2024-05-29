%dw 2.0
output application/json
---
{
  response: {
  	  message: "get products by product list successful",
  	  payload: payload 
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}