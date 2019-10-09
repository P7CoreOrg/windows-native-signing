Param
(
$clientId,
$clientSecret
)
Write-Host $clientId
Write-Host $clientSecret

dotnet tool install --global AzureSignTool --version 2.0.17



Write-Information $clientId
Write-Information $clientSecret

AzureSignTool.exe sign  --file-digest sha256  --description-url "https://github.com/p7coreorg" --timestamp-rfc3161 http://timestamp.digicert.com --timestamp-digest sha256 --azure-key-vault-url https://P7KeyValut.vault.azure.net/ --azure-key-vault-client-id $clientId --azure-key-vault-client-secret $clientSecret  --azure-key-vault-certificate P7IdentityServer4SelfSigned .\Release\hello.utls.dll .\Release\HelloWorld.exe
