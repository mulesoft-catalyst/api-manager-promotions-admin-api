%dw 2.0
output application/json
---
{
	"apiId": vars.apiInstanceId as String,
	"environmentId": vars.environmentId,
	"acceptedTerms": true,
	"organizationId": vars.app.groupId, //this is the actual group id in exchange not the organization id
	"groupId": vars.app.groupId,
	"assetId": vars.app.apiAssetId,
	"version": vars.app.version,
	"versionGroup": vars.app.versionGroup
}