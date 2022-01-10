%dw 2.0
output application/json
---
{
	message: "Unsupported media type",
	description: (error.description splitBy(/\nTrace/))[0] replace /\"/ with "",
	correlationId: correlationId
}