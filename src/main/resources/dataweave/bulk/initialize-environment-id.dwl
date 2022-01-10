%dw 2.0
output application/java
---
if(vars.targetEnvironmentId != null) vars.targetEnvironmentId else 
(if (vars.bulkTargetEnvironmentId != null) vars.bulkTargetEnvironmentId else p("secure::environment.id"))