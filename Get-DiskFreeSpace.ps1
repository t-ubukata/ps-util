function Get-RemoteDiskFreeSpace($computerName, $cred) {
  Get-CimInstance Win32_PerfFormattedData_PerfDisk_LogicalDisk -Credential $cred -ComputerName $computerName | Select-Object -Property Name, PercentFreeSpace
}
