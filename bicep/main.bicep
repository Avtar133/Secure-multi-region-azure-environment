targetScope = 'subscription'

resource rgUK 'Microsoft.Resources/resourceGroups@2024-03-01' = {
name: 'rg-global_company-uk'
location: 'uksouth'
}

resource rgIndia 'Microsoft.Resources/resourceGroups@2024-03-01' = {
name: 'rg-global-company-india'
location: 'centralindia'
}

module vnetUK 'modules/vnet.bicep' = {
name: 'deploy-vnet-uk'
scope: rgUK
params: {
vnetName: 'vnet-uk'
location: 'uksouth'
addressPrefix: '10.0.0.0/16'
subnetPrefix: '10.0.0.0/24'
subnetName: 'subnet-uk-employees'
}
}

module vnetIndia 'modules/vnet.bicep' = {
name: 'deploy-vnet-india'
scope: rgIndia
params: {
vnetName: 'vnet_india'
location: 'centralindia'
addressPrefix: '10.1.0.0/16'
subnetPrefix: '10.1.0.0/24'
subnetName: 'subnet-india-employees'
}
}


