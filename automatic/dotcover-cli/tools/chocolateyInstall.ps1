﻿$ErrorActionPreference = 'Stop'

$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$archive  = Join-Path $toolsDir 'JetBrains.dotCover.CommandLineTools.2020.2.zip'

$unzipArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = $archive
  Destination  = $toolsDir
}

Get-ChocolateyUnzip @unzipArgs

Get-ChildItem $toolsDir -include *.exe -exclude 'dotCover.exe' -recurse  | Select-Object { New-Item "$_.ignore" -type file -force | Out-Null }
