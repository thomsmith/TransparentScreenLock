
$xCmdString = {rundll32.exe user32.dll,LockWorkStation}

#$process = Get-Process | Where-Object { $_.ProcessName -eq "bubbles"} -ErrorAction SilentlyContinue
#$processname = $process.name


Invoke-Item "C:\Windows\System32\Bubbles.scr"

Start-Sleep -Seconds 2

Do {
  $process = Get-Process | Where-Object { $_.Path -eq "C:\Windows\System32\Bubbles.scr"}
 }
 until($process -eq $null)

Invoke-Command $xCmdString

exit
