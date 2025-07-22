$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipUrl = 'https://github.com/armourstill/gbase64/releases/download/v0.11.0/gbase64-v0.11.0.windows.amd64.zip'
$sha256 = 'A2B4AC5E23BB23D6C307FB8F1AAFC330205AD6A2C6940205266EC7BC6DB979B6'
Install-ChocolateyZipPackage `
    -PackageName 'gbase64' `
    -Url $zipUrl `
    -Checksum $sha256 `
    -ChecksumType sha256 `
    -UnzipLocation $toolsDir
