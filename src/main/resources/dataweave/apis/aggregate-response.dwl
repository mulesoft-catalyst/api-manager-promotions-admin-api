%dw 2.0
output application/java
var assetName = ((vars.apis filter ($.apis.id contains(vars.apiInstanceId)))[0]).exchangeAssetName
var apis = (vars.apiProcessing.apis filter ($.id == vars.apiInstanceId))[0]
var contracts = payload.contracts default []
---
{
    "sourceApiInstanceId": apis.id as String,
    "groupId": apis.groupId,
    "apiAssetId": apis.assetId,
    "assetName": assetName,
    "version": apis.assetVersion,
    "versionGroup": apis.productVersion,
    "contracts": contracts map (v,k) -> (
		    { 
		    	name: (if (vars.contractSuffixToBeReplaced != null and vars.contractSuffixReplacement != null) 
		    			(v.application.name replace vars.contractSuffixToBeReplaced with vars.contractSuffixReplacement)
		    		  else 
		    		  	v.application.name),
		    	"redirectUri":[],
		    	"grantTypes":[],
		    	"apiEndpoints":false
		    }
		)
}