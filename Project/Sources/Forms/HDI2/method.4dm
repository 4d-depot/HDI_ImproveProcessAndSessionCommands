Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		InitInfo
		
		If (Application type:C494=4D Local mode:K5:1)
			OBJECT SET ENABLED:C1123(*; "rb_all_processes_sessionid"; False:C215)
			OBJECT SET ENABLED:C1123(*; "btnSessionProperties"; False:C215)
			
			OBJECT SET VISIBLE:C603(*; "@warning_sessions"; True:C214)
		End if 
		
		Form:C1466.trace:=True:C214
		Form:C1466.procProperties:=New object:C1471
		
		Form:C1466.rType:="all_processes"
		OBJECT SET VALUE:C1742("rb_all_processes"; True:C214)
		
	: (Form event code:C388=On Close Box:K2:21)
		If (Is Windows:C1573 && Get application info:C1599().SDIMode)
			QUIT 4D:C291
		Else 
			CANCEL:C270
		End if 
		
End case 

