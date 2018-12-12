$adatok = Import-Csv -Header "Nev","Szam","Szam2" -Delimiter ";" -Path .\adat.txt
$db = $args.Count

For ($i=0; $i -lt $adatok.Length; $i++){

$j = $i+1
$a = $adatok[$i]

if ($a.Szam -lt $a.Szam2){
    #munka a kisebb
    $nagyobb = $a.Szam2
    $munka = $a.Szam
    }else{
    $munka = $a.Szam2
    $nagyobb = $a.Szam}

if ($db -eq 1) { #ha egy arg van
    if ($j % $args[0] -eq 0){$munka = $nagyobb}
}

$adatok[$i].Nev+': '+$munka
}