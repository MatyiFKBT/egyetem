#Random Tester

function Wait-KeyPress($prompt) {
	Write-Host " ";
    Write-Host $prompt; 
	
	do {
		Start-Sleep -milliseconds 100;
	} until ($Host.UI.RawUI.KeyAvailable)

	$Host.UI.RawUI.FlushInputBuffer();
    Write-Host " ";
}

function Read030(){
    do {
        try {
            $numOk = $true
            [int]$chance = Read-host "Write a number between 0-30"
            } # end try
        catch {$numOK = $false}
        } # end do 
    until (($chance -ge 0 -and $chance -le 30) -and $numOK)
    return $chance
}

function TRandom([int]$chance, [bool]$talk){
    if($talk){Write-Host "Random(100) < $chance ";}
    $countFirst=0;
    for ($j=1; $j -le 50; $j++){
	    $count=0; 
        for ($i=1; $i -le 100; $i++){
    	    $random = Get-Random -minimum 0 -maximum 100;
    	    $rand = $random -lt $chance;
    	    if($rand){
                if($talk){Write-Host -ForegroundColor Red -NoNewline 1;}
			    $count++;
            } else {
                if($talk){Write-Host -NoNewline 0;}
            }
        }
	    if($talk){Write-Host "= $count";}
	    $countFirst+=$count;
    }
    $countFirst = $countFirst/50;
    Write-Host "$countFirst";
}

function PRandom([int]$chance, [bool]$talk){
    
    # array of modifiers 0-30
    $array030 =  
    0.00000 , 
    0.00013 , 0.00058 , 0.00135 , 0.00241 , 0.00378 , 0.00543 , 0.00736 , 0.00956 , 0.01203 , 0.01476 , 
    0.01776 , 0.02100 , 0.02449 , 0.02824 , 0.03222 , 0.03644 , 0.04090 , 0.04560 , 0.05052 , 0.05567 , 
    0.06105 , 0.06664 , 0.07246 , 0.07849 , 0.08473 , 0.09117 , 0.09783 , 0.10468 , 0.11173 , 0.11898;

    if($talk){Write-Host "Random(100) < Q * #Failures";}

    $countSecond=0;
    for ($j=1; $j -le 50; $j++){
        $count=0; 
        $failures=1;
        for ($i=1; $i -le 100; $i++){
            $random = Get-Random -minimum 0 -maximum 100;
            $ammount = $array030[$chance]*$failures*100;
            $rand = $random -lt $ammount;
            if($rand){
                if($talk){Write-Host -ForegroundColor Red -NoNewline 1;}
                $failures=1;
			    $count++;
            } else {
                 if($talk){Write-Host -NoNewline 0;}
                $failures++;
            }
        }
	     if($talk){Write-Host "= $count";}
	    $countSecond+=$count;
    }
    $countSecond = $countSecond/50;
    Write-Host "$countSecond";
}

[int]$chance = Read030 / 1;

TRandom $chance $false;
PRandom $chance $true;

Wait-KeyPress("Press a key to quit");
Wait-KeyPress("");



# 1-30% in intervals of 1: 
# 0 0.00000 
# 1 0.00013 
# 2 0.00058 
# 3 0.00135 
# 4 0.00241 
# 5 0.00378 
# 6 0.00543 
# 7 0.00736 
# 8 0.00956 
# 9 0.01203 
# 10 0.01476 
# 11 0.01776 
# 12 0.02100 
# 13 0.02449 
# 14 0.02824 
# 15 0.03222 
# 16 0.03644 
# 17 0.04090 
# 18 0.04560 
# 19 0.05052 
# 20 0.05567 
# 21 0.06105 
# 22 0.06664 
# 23 0.07246 
# 24 0.07849 
# 25 0.08473 
# 26 0.09117 
# 27 0.09783 
# 28 0.10468 
# 29 0.11173 
# 30 0.11898 
