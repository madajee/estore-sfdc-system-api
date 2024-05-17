%dw 2.0
output application/json
---
if (vars.queryparameters.leadname != null)
{
	"query": "SELECT ID, Title, Name, Status FROM lead where name = " ++ "':leadname'"
}
else if (vars.queryparameters.company != null) 
{
	"query": "SELECT ID, Title, Name, Status FROM lead where company = " ++ "':company'"
}	
else
{
	"query": "SELECT ID, Title, Name, Status FROM lead limit 10" 
}
	