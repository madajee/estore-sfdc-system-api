%dw 2.0
output application/json
---
{
  response: {
  	  message: "remove lead successful",
  	  rpayload: payload.items map() -> {
  	  	id: $.id,
  	  	status: $.successful
  	  }
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}