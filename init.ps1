Set-PSReadlineKeyHandler -Key Tab -Function Complete

[System.Console]::OutputEncoding=[System.Text.Encoding]::GetEncoding(65001)
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

$env:LC_ALL = "C.UTF-8"
$env:LANG = "C.UTF-8"

Invoke-Expression ($(lua $(Resolve-Path ~/.local/shell_config/z.lua) --init powershell) -join "`n") 
