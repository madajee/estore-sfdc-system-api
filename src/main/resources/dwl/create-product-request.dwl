%dw 2.0
output application/java
---
payload map() -> {
	"Name": $.name,
	"Description": $.description,
	"Family": $.family,
	"ProductCode": $.productcode,
	"CurrencyIsoCode": $.productcurrency,
	"IsActive": $.active,
	(if (($.groundmount != null) and ($.groundmount)) "Ground_mount__c": true else "Ground_mount__c": false)
	
}