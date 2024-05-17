%dw 2.0
output application/java
---
payload map() -> {
	"FirstName": $.firstname,
	"LastName": $.lastname,
	"Company": $.company,
	"Status": $.status,
	"Title": $.title
}