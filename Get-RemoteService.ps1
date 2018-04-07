function Get-RemoteService($cred, $computerName, $serviceName) {
  Get-WmiObject Win32_Service -Credential $cred -ComputerName $computerName | Where-Object {$_.Name -match �g$serviceName�h}
}
