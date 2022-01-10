%dw 2.0
output application/json
---
{
	"username": p('secure::anypoint.platform.user'),
	"password": p('secure::anypoint.platform.password')
}