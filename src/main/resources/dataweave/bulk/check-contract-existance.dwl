%dw 2.0
output application/java
---
sizeOf(payload.contracts default []) > 0