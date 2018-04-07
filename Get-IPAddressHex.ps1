# convert IP decimal address to hex
# output: hex IP address without dots
function Get-IPAddressHex {
  [CmdletBinding()]
  param (
    [parameter(Mandatory=$true, ValueFromPipeline=$true)]
    [int]$IP1decimal,
    [parameter(Mandatory=$true, ValueFromPipeline=$true)]
    [int]$IP2decimal,
    [parameter(Mandatory=$true, ValueFromPipeline=$true)]
    [int]$IP3decimal,
    [parameter(Mandatory=$true, ValueFromPipeline=$true)]
    [int]$IP4decimal
  )
  PROCESS {
    $IP1hex = $IP1decimal.ToString("X").PadLeft(2, "0")
    $IP2hex = $IP2decimal.ToString("X").PadLeft(2, "0")
    $IP3hex = $IP3decimal.ToString("X").PadLeft(2, "0")
    $IP4hex = $IP4decimal.ToString("X").PadLeft(2, "0")

    $IP1hex + $IP2hex + $IP3hex + $IP4hex
  }
}
