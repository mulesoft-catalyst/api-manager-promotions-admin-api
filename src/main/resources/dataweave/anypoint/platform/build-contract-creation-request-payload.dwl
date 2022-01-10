%dw 2.0
output application/json
---
{
	"name": vars.contract.name,
	"redirectUri": vars.contract.redirectUri,
	"grantTypes": vars.contract.grantTypes,
	"apiEndpoints": vars.contract.apiEndpoints
}