%dw 2.0
output application/json
---
{
  response: {
  	  message: "remove quotes successful",
  	  payload: payload.items map() -> {
  	  	id: $.id,
  	  	status: $.successful
  	  }
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}