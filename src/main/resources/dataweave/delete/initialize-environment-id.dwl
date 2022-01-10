%dw 2.0
output application/java
---
if(vars.targetEnvironmentId != null) vars.targetEnvironmentId else 
(if (vars.deleteAppTargetEnvironmentId != null) vars.deleteAppTargetEnvironmentId else p("secure::environment.id"))