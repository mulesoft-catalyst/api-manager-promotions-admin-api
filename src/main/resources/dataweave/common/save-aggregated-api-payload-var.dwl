%dw 2.0
output application/java
---
if (vars.aggregatedAPIPayload == null) payload.assets
else (vars.aggregatedAPIPayload ++ payload.assets)