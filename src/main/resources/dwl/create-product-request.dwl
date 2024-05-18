%dw 2.0
output application/java
---
payload map() -> {
	"Name": $.name,
	"Description": $.description,
	"Family": $.family
}