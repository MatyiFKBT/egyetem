###########################
$server ="";#
$username ="";       #
$pass ="";        #
###########################

Start-Sleep -Seconds 15

$net = $(New-Object -ComObject WScript.Network)
$net.MapNetworkDrive("z:", "\\$server\$username", $false, "$username", "$pass")
