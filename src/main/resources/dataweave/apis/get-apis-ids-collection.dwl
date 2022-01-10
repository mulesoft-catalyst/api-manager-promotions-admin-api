%dw 2.0
output application/java
---
flatten (payload map (v,k) -> (
    (v.apis filter ($.productVersion != null)).id
))