%dw 2.0
output application/java
---
{
	name: payload.name,
	clientId: payload.clientId,
	clientSecret: payload.clientSecret
}