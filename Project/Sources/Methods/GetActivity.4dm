//%attributes = {"executedOnServer":true}
#DECLARE($type : Text; $bTrace : Boolean)->$activity : Object

If ($bTrace)
	TRACE:C157
End if 

// The "Execute on server" property is set for this method

$sessionID:=Session:C1714.id

Case of 
		
	: ($type="all_processes")
		// return all processes
		$activity:=Process activity:C1495(Processes only:K5:35)
		
	: ($type="all_processes_sessionid")
		// return all processes linked to the session passed in parameter
		$activity:=Process activity:C1495($sessionID; Processes only:K5:35)
		
	Else 
		// return all sessions and processes
		$activity:=Process activity:C1495($sessionID)
		
End case 