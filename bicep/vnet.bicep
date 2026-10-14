param vnetName string
param location string
param addressPrefix string
param subnetName string
param subnetPrefix string

resource vnet 'Microsoft.Network/virtualNetworks@2024-01-01' = {
name: vnetName
location: location
tags: {
Department: 'Global'
}
properties: {
addressSpace: {
addressPrefixes: [addressPrefix]
}
subnets: [
{
name: subnetName
properties: {
addressPrefix: subnetPrefix
}
}
]
}
}


