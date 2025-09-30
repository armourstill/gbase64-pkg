$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipUrl = 'https://github.com/armourstill/gbase64/releases/download/v0.12.0/gbase64-v0.12.0.windows.amd64.zip'
$sha256 = 'CAE05445AFBCF23EBD41E7BB40C86B82CDD64EAFBC70C06403B6B2906E3EE674'
Install-ChocolateyZipPackage `
    -PackageName 'gbase64' `
    -Url $zipUrl `
    -Checksum $sha256 `
    -ChecksumType sha256 `
    -UnzipLocation $toolsDir
