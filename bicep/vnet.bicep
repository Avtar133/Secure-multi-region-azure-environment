param vnetName string
param location string
param addressPrefix string
param subnetName string

resource vnet 'Microsoft.Network/virtualNetworks@2024-01-01' = {
name: vnetName
location: location
properties: {
addressSpace: {
addressPrefixes: [addressPrefix]
}
subnets: [
{
name: subnetName
properties: {
addressPrefix: '10.0.0.0/24'
}
}
]
}
}


