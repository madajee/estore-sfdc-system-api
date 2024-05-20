%dw 2.0
output application/json
---
{
  response: {
  	  message: "get product successful",
  	  payload: payload map() -> {
  	  	productname: $.Product2.Name,
  	  	pricebookname: $.Pricebook2.Name,
  	  	unitprice: $.UnitPrice
  	  }
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}