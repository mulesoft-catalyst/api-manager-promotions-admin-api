%dw 2.0
output application/json
---
{
	message: "Method not allowed",
	description: (error.description splitBy(/\nTrace/))[0] replace /\"/ with "",
	correlationId: correlationId
}