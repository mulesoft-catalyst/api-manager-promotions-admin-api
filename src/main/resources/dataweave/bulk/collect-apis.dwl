%dw 2.0
output application/java
---
if (attributes.statusCode != 200) [] else
(
	flatten(payload.apis default []) map (v,k) -> ({
	    assetId: v.assetId,
	    "assetName": v.exchangeAssetName default "",
	    assetVersion: v.assetVersion,
	    apiInstanceId: v.id
	})
)
