$link = "https://github.com/PeaceOfficial/Moonship/releases/latest/download/MoonshipCli.exe"

$outfile = "$env:TEMP\MoonshipCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
