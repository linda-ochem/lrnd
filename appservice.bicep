param appName string = 'cleoapp' // Replace with your desired app name
param location string = 'East US' // Replace with your desired Azure region

resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: '${appName}-plan'
  location: location
  properties: {
    reserved: true
    sku: {
      family: 'B'
      name: 'B1'
      tier: 'Basic'
    }
  }
}

resource webApp 'Microsoft.Web/sites@2021-02-01' = {
  name: appName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
  dependsOn: [
    appServicePlan
  ]
}
