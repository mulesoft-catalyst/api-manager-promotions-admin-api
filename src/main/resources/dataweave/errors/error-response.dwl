%dw 2.0 
output application/json 
--- 
{
	message: "Internal Server Error",
	description: "There were errors processing the request, please check the logs for more information",
	correlationId: correlationId
}