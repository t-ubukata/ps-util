function Get-PSCredential($userName, $plainPassword) {
  $SecurePassword = ConvertTo-SecureString String $plainPassword -AsPlainText -Force
  New-Object System.Management.Automation.PSCredential($userName, $SecurePassword)
}
