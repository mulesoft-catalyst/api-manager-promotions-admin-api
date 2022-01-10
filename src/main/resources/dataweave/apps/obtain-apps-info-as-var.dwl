%dw 2.0
output application/java
---
payload.applications map (v,k) -> ({
	"id": v.id,
	"applicationName": v.name
})