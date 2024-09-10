If (Form:C1466.trace)
	TRACE:C157
End if 

//Form.sessionProperties:=Process properties(Current process)

Form:C1466.sessionProperties:=GetActivity(""; False:C215).sessions.first()
