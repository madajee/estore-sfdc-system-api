%dw 2.0
output application/json
var doNotCreateOpportunity = vars.convertleadrequestparams.doNotCreateOpportunity as Boolean
var messageopportunity =  "lead conversion with opportunity successful"
var message =  "lead conversion without opportunity successful"
---
{
  response: {
  	  message: (if (vars.convertleadrequestparams.doNotCreateOpportunity as Boolean) messageopportunity else message),
  	  payload: payload
  }

} as Object {encoding: "UTF-8", mediaType: "application/json"}