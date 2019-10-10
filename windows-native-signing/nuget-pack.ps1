Param
(
$version
)
Write-Host $version
Write-Host "HOME:"$PSScriptRoot

write-host nuget pack "$PSScriptRoot\windows-native.nuspec" -Version $version
nuget pack "$PSScriptRoot\windows-native.nuspec" -Force -Version $version -OutputDirectory $PSScriptRoot\nuget