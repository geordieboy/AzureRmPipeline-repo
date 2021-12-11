$SubscriptionId = 'a9828cc5-3ef8-407b-8f82-6e07235f6f5c'
$parameters = @{
    Token = (az account get-access-token | ConvertFrom-Json).accessToken
    LogicApp = 'logic_demo'
    ResourceGroup = 'LADV'
    SubscriptionId = $SubscriptionId
    Verbose = $true
}

Get-LogicAppTemplate @parameters | Out-File C:\Users\leero\Desktop\azure\template.json




