$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipUrl = 'https://github.com/armourstill/gbase64/releases/download/v0.11.0/gbase64-v0.11.0.windows.amd64.zip'
Install-ChocolateyZipPackage -PackageName 'gbase64' -Url $zipUrl -UnzipLocation $toolsDir
