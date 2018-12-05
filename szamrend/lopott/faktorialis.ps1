function Get-Faktorial{
Param(
    [Parameter(Position=0,mandatory=$true)]
    [int]$szam
)

# Egy paramétere van a function-nek, ami egy egész szám. Amennyiben nem adjuk meg futáskor a program kérni fogja.
    
    if ($szam -eq 0){
        return 1
    }

# Emlékezzünk, hogy relációs jelek helyett -le -lt -ge -gt használunk 

    $fakt = 1

    1..$szam | %{$fakt*=$_}
	
<# van egy tömbünk 1 től $szam-ig egész számokkal. Ezt átadjuk egy foreach ciklusnak, amiben a fakt változó értékét úgy változtatjuk,
hogy megszorozzuk az összes nála kisebb egész számmal. #>

	
    return $fakt

}

Get-Faktorial
Get-Faktorial 4
# Hívjuk is meg, ha létrehoztuk.