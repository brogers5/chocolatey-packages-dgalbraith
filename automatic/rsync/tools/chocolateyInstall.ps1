﻿$tools   = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$content = Join-Path $package 'cwRsync_5.5.0_x86_Free'

Install-ChocolateyZipPackage `
    -PackageName 'rsync' `
    -Url 'https://www.itefix.net/dl/cwRsync_5.5.0_x86_Free.zip' `
    -UnzipLocation $package

# This package requires the RSYNC_HOME directory on the PATH and a HOME
# environment variable. This cannot be provided with Chocolatey's automatic
# shimming. I have to shim custom batch files.
Get-ChildItem $tools\*.bat | %{ Install-BinFile -Name $_.BaseName -Path $_ }
Get-ChildItem $content\*.exe | %{ New-Item "$_.ignore" -Type 'File' -Force | Out-Null }
