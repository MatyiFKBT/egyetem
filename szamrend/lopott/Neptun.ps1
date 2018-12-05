#Global variables
$uname = "KNDQJI";
$pwd = "mondhatja1"                                 
$url = "hallgato.neptun.elte.hu";  
$url2 = "https://hallgato.neptun.elte.hu/main.aspx?ismenuclick=true&ctrl=0401";

#Exeption Handling
trap [Exception]{
	if($_.Exception.Message -eq "Property 'value' cannot be found on this object; make sure it exists and is settable." -Or $_.Exception.Message -eq "You cannot call a method on a null-valued expression.")
	{
		continue;
	} else {
		Write-Host -ForegroundColor Red $_.Exception.Message;
	}
}

Write-Host -ForegroundColor Yellow "login to $url with the username: $uname ";
$network = Test-Connection www.elte.hu -Quiet;
Write-Host "Checking connection";
if (!$network){
	Write-Host -ForegroundColor Red "Could not connect to elte.hu, the program terminates";
	Start-Sleep -Milliseconds 1000;
	Exit;
}

Write-Host "Creating Internet Explorer object";
$ie = New-Object -ComObject internetexplorer.application;
$ie.visible = $true;
Write-Host "Navigating to the url";
$ie.navigate($url);
while ($ie.Busy -eq $true){	Start-Sleep -Milliseconds 1000; }

Write-Host "Logging in";
$ie.Document.getElementById("user").value = $uname;
$ie.Document.getElementById("pwd").value = $pwd;
$ie.Document.getElementById("btnSubmit").Click();
while ($ie.Busy -eq $true){	Start-Sleep -Milliseconds 1000; }

Start-Sleep -Milliseconds 1000;	
Write-Host "Navigating to the secondary defined url";
$ie.navigate($url2);
Start-Sleep -Milliseconds 1000;

Write-Host "Activating the browsers window";
$ie.visible = $true;
Start-Sleep -Milliseconds 1000;















