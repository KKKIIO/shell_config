if (-Not( Test-Path -Path ~/.local)) {
    mkdir ~/.local
    Set-Location ~/.local
    git clone https://github.com/KKKIIO/shell_config.git
}

if (-Not(Test-Path -Path ~/.local/shell_config/z.lua)) {
    Invoke-WebRequest https://raw.githubusercontent.com/skywind3000/z.lua/master/z.lua -OutFile ~/.local/shell_config/z.lua
}

$profPath = $profile.CurrentUserAllHosts
New-Item (Split-Path $profPath) -ItemType Directory -ea 0
@'
$fileContents = [string]::join([environment]::newline, (get-content -path ~/.local/shell_config/init.ps1))
invoke-expression $fileContents
'@ | Out-File -FilePath $profPath
