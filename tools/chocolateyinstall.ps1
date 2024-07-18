$ErrorActionPreference = 'Stop';
$checksum = "cee213d72a577dc29561bebe14cb07c9950e2cb59df89aeb3ed33b97863d7a88812dd97c7036e6af0009c0bcb569a7d4f16be725898eac095283a4a69fc7f07e"

Write-Host "Fetching version '$packageVersion'"

$downloadUrl = "https://github.com/padloc/padloc/releases/download/v4.3.0/padloc_4.3.0_windows_tauri_x64.msi"

$installArgs = @{
  packageName   = $env:ChocolateyPackageName
  silentArgs    = "/quiet /lv /norestart /qn"
  Url           = $downloadUrl
  checksum      = $checksum
  checksumType  = 'sha512'
  fileType      = 'msi'
}

Install-ChocolateyPackage @installArgs
