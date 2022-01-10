%dw 2.0
output application/java
---
(vars.apis filter ($.assetId == vars.app.apiAssetId and $.assetVersion == vars.app.version))[0].apiInstanceId