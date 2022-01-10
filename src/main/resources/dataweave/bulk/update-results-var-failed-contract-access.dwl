%dw 2.0
output application/java
---
vars.results << 
({
	apiInstanceId: vars.apiInstanceId,
	apiName: vars.app.apiAssetId,
	"assetName": vars.app.assetName,
	applicationContractName: vars.contract.name,
	result: "Failed contract access request"
})