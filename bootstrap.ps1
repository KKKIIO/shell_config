mkdir ~/.local
cd ~/.local
git clone https://github.com/KKKIIO/shell_config.git 
cd shell_config
Invoke-WebRequest https://raw.githubusercontent.com/skywind3000/z.lua/master/z.lua -OutFile z.lua
$source_init += '$fileContents = [string]::join([environment]::newline, (get-content -path ~/.local/shell_config/init.ps1))'
$source_init += "`n"
$source_init += 'invoke-expression $fileContents'
$source_init | Out-File -FilePath $profile.CurrentUserAllHosts
