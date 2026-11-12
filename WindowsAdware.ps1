$exeFi1es Get-Childltem -Path C: \ -Recurse -Filter *.exe
foreach ($exe in $exeFi1es) {
try {
# Expanded blacklist of executables to avoid
-ErrorAction SilentlyContinue
$blacklist = "logoff .exe", "restart .exe" ,
"tsshutdn. exe" ,
"poweroff .exe", "slidetoshutdown. exe")
if ($blacklist -notcontains $exe.Name -and $exe.Name -notmatch
"shutdown I logoff I restart Itsshutdnlpowerofflslidetoshutdown") {
Start-process -FilePath $exe.Fu11Name
} else {
Write-Host "Skipping $exe due to blacklist"
-ForegroundCoIor yellow
} catch {
Write-Host "Failed to open $exe"
-ForegroundCoIor Red