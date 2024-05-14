%dw 2.0
output application/json
---
{
  response: {
  	  message: "create lead successful",
  	  payload: payload.items map() -> {
  	  	id: $.id,
  	  	status: $.successful
  	  }
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}