%dw 2.0
output application/java
---
{
	id: payload.id,
	applicationName: payload.name,
	credentials: 
	{
		clientId: payload.clientId,
		clientSecret: payload.clientSecret
	}
}