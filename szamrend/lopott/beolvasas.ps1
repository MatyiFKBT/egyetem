$adatok = Import-Csv -Header "Nev","Honnan","Db","Ar" -Delimiter ";" -Path .\adat.txt
<#Ezzel a fajta beolvasással csv(Comma-separated values) állományt lehet beolvasni, 
de bármilyen egyedi elválasztót használó szövegfile-t meg tud enni, megfeleő Delimiter megadásával.
A Header nélkül az első sor tartalmazza az oszlopcímkéket#>


$adatok | %{
    [int]$_.Db*[int]$_.Ar
}

<#Emlékezzünk rá, hogy a pipeline itt nem szöveget, hanem objektumot ad át, amin a %-mögött rejtőző foreach ciklus végig tud iterálni. 
az [int] itt megoldja a típuskonverziót, a $_ pedig az úgynevezett THIS token, ami itt a foreach éppen akttuális elemét jelenti #>
