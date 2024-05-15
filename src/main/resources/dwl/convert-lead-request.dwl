%dw 2.0
output application/java
var doNotCreateOpportunity = vars.convertleadrequestparams.doNotCreateOpportunity as Boolean
var accountId =  vars.res_accountbyaccountname[0].Id default null
---
if (accountId != null)
{
    leadId: vars.res_leadbyleadname[0].Id,
    convertedStatus: "Closed - Converted",
    accountId: accountId,
    doNotCreateOpportunity: doNotCreateOpportunity
}
as Object {
    class : "org.mule.extension.salesforce.api.core.LeadConvertRequest"
	}
else 
{
    leadId: vars.res_leadbyleadname[0].Id,
    convertedStatus: "Closed - Converted",
    doNotCreateOpportunity: doNotCreateOpportunity
}
as Object {
    class : "org.mule.extension.salesforce.api.core.LeadConvertRequest"
	}

