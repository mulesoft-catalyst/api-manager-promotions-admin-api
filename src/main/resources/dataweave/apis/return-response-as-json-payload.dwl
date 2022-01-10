%dw 2.0
output application/json

fun filterStringInclusion(listOfApis) =
if(vars.apiNameIncludeIfContains != null) listOfApis filter ($.apiAssetId contains vars.apiNameIncludeIfContains)
else listOfApis

fun filterStringExclusion(listOfApis) =
if(vars.apiNameExcludeIfStartsWith != null) listOfApis filter (!($.apiAssetId startsWith(vars.apiNameExcludeIfStartsWith)))
else listOfApis
---
filterStringExclusion(filterStringInclusion(payload.payload))