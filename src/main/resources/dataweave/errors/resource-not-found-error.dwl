%dw 2.0
output application/json
---
{
	message: "Resource not found",
	description: (error.description splitBy(/\nTrace/))[0] replace /\"/ with "",
	correlationId: correlationId
}