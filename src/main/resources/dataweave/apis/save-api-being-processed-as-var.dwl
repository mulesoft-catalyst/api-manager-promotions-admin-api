%dw 2.0
output application/java
---
(vars.apis filter ($.apis.id contains(payload)))[0]