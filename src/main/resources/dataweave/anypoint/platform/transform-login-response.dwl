%dw 2.0
output application/java
---
{
	accessToken: payload.access_token,
	tokenType: payload.token_type,
	redirectUrl: payload.redirectUrl
}