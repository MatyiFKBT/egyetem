$input = Read-Host
$n = % {Get-Random -Minimum 1 -Maximum 10 }
$input.Split("`n") | %{
    $n =  % {Get-Random -Minimum 1 -Maximum 10 }
    $_ + " " +$n
}