Param(
[Parameter(Mandatory = $true)]
[int]$lomb,
[int]$torzs = 1
)

1..$lomb | % {' ' * ($lomb - $_) + '#' * ($_ * 2 - 1) }
1..$torzs | % {' ' * ($lomb - 1) + '#'}
#Write-Host (' '*$($lomb-1))'#' -ForegroundColor Gray