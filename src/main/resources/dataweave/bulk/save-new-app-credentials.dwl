%dw 2.0
output application/java
---
{
	clientId: payload.clientId,
	clientSecret: payload.clientSecret
}