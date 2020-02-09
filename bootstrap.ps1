mkdir ~/.shell
Invoke-WebRequest https://raw.githubusercontent.com/skywind3000/z.lua/master/z.lua -OutFile ~/.shell/z.lua
$profilePath = $profile.CurrentUserAllHosts
if ((Test-Path -Path $profilePath)) {
    throw "profile=($profilePath) already exists"
}
Invoke-WebRequest https://raw.githubusercontent.com/KKKIIO/shell_config/master/Profile.ps1 -OutFile $profilePath
