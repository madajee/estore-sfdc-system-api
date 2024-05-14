%dw 2.0
output application/java
---
{
    leadId: vars.res_leadbyleadname[0].Id,
    convertedStatus: "Closed - Converted",
    doNotCreateOpportunity: true
} as Object {
    class : "org.mule.extension.salesforce.api.core.LeadConvertRequest"
}
