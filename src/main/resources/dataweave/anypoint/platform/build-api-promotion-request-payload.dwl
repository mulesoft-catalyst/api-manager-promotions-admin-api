%dw 2.0
output application/json
---
{
	"instanceLabel": null,
	"promote": {
		"alerts": {
			"allEntities": true
		},
		"originApiId": vars.app.sourceApiInstanceId as Number,
		"policies": {
			"allEntities": true
		},
		"tiers": {
			"allEntities": true
		}
	}
}