%dw 2.0
output application/json
---
{
	upperId: "",
	lowerId: vars.lowerId,
	descending: false,
	limit: p('cloudhub.logs.limit')
}