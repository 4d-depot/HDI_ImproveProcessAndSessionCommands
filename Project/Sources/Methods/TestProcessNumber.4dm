//%attributes = {}

$col:=GetActivity(""; False:C215).processes
$c2:=$col.filter(Formula:C1597($1.value.name=$2); "00_Start")

For each ($o; $c2)
	
	$num:=Process number:C372($o.ID)
	
	$numS:=Process number:C372($o.ID; *)
	
End for each 
