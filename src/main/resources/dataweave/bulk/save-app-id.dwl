%dw 2.0
output application/java
---
(payload.applications filter ($.name == vars.contract.name))[0].id