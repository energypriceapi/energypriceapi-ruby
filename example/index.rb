require_relative '../lib/energypriceapi'

API_KEY = 'REPLACE_ME'

EnergypriceAPI::VERSION

client = EnergypriceAPI::Client.new(
  api_key: API_KEY
)

data = client.fetchSymbols()
puts data

data = client.fetchLive()
puts data

data = client.fetchHistorical('2021-04-05', 'USD', ['BRENT','GASOLINE','NATURALGAS','WTI'])
puts data

data = client.convert('USD', 'EUR', 100, '2021-04-05')
puts data

data = client.timeframe('2021-04-05', '2021-04-06', 'USD', ['BRENT','GASOLINE','NATURALGAS','WTI'])
puts data

data = client.change('2021-04-05', '2021-04-06', 'USD', ['BRENT','GASOLINE','NATURALGAS','WTI'])
puts data