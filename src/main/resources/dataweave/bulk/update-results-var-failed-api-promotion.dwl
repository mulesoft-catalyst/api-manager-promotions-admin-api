%dw 2.0
output application/java
---
vars.results << 
({
	apiName: vars.app.apiAssetId,
	result: "Failed api promotion"
})