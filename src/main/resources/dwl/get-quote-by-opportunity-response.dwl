%dw 2.0
output application/json
fun getQuotelines(quoteId) = vars.opportunityquotelines filter ($.QuoteId == quoteId)
---
if (vars.opportunityrecord[0].Id != null)
{
  response: {
  	  message: "get quote by opportunity successful",
  	  payload:  vars.opportunityquotes map() -> {
		    name: $.Name,
		    opportunityname: $.Opportunity.Name,
		    quoteId: $.Id,
		    quotelines: getQuotelines($.Id) map() -> {
		    	productname: $.Product2.Name,
		    	quantity: $.Quantity
		    }
		}
  }
} as Object {encoding: "UTF-8", mediaType: "application/json"}
else {
	response: {
  	  message: "Opporutnity with name: " ++ vars.queryparameters.opportunityname as String ++ " doesnot exists, please check.",
  	}
} 	as Object {encoding: "UTF-8", mediaType: "application/json"}