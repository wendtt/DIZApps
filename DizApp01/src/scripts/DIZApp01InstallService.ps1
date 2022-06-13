if ($args.count -gt 0) {
	if ($args[0] -eq "remove") {
		$service = Get-WmiObject -Class Win32_Service -Filter "Name='DIZApp01'"
		$service.delete()	
	}
} else {
	New-Service -Name "DIZApp01" -Description "FHIR Query Tool" -Binary ('"' + (Get-Location) + '\DIZApp01Service.exe"')
}