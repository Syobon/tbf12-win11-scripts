$P=$env:TEMP+'\chrome_installer.exe'
$ProgressPreference='SilentlyContinue'
Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P
Start-Process -FilePath $P -Args '/silent /install' -Verb RunAs -Wait
DEL $P