@{
  GUID = 'd2a8c308-39e3-4eda-bdb1-dd69b5f988fb'
  RootModule = './Az.Purview.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: Purview cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.Purview.private.dll'
  FormatsToProcess = './Az.Purview.format.ps1xml'
  FunctionsToExport = 'Get-AzPurviewAccount', 'Get-AzPurviewInstance', 'New-AzPurviewAccount', 'New-AzPurviewInstance', 'New-AzPurviewIotHubSettingsObject', 'Remove-AzPurviewAccount', 'Remove-AzPurviewInstance', 'Test-AzPurviewAccountExistence', 'Test-AzPurviewInstanceExistence', 'Test-AzPurviewNameAvailability', 'Update-AzPurviewAccount', 'Update-AzPurviewInstance', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'PSModule', 'Purview'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
    }
  }
}
