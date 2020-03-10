Param
(
$clientId,
$clientSecret
)
Write-Host $clientId
Write-Host $clientSecret
Write-Host "HOME:"$PSScriptRoot

dotnet tool install --global AzureSignTool --version 2.0.17



Write-Host  AzureSignTool.exe sign  -v --file-digest sha256  --description-url "https://github.com/p7coreorg" --timestamp-rfc3161 http://timestamp.digicert.com --timestamp-digest sha256 --azure-key-vault-url https://P7KeyValut.vault.azure.net/ --azure-key-vault-client-id $clientId --azure-key-vault-client-secret $clientSecret  --azure-key-vault-certificate P7IdentityServer4SelfSigned "$PSScriptRoot\x64\Release\hello.utls.dll" "$PSScriptRoot\x64\Release\HelloWorld.exe"
Write-Host "---------------------------------"
AzureSignTool.exe sign  -v --file-digest sha256  --description-url "https://github.com/p7coreorg" --timestamp-rfc3161 http://timestamp.digicert.com --timestamp-digest sha256 --azure-key-vault-url https://P7KeyValut.vault.azure.net/ --azure-key-vault-client-id $clientId --azure-key-vault-client-secret $clientSecret  --azure-key-vault-certificate P7IdentityServer4SelfSigned "$PSScriptRoot\x64\Release\hello.utls.dll" "$PSScriptRoot\x64\Release\HelloWorld.exe"
