# EnergypriceAPI

energypriceapi is the official Node.js wrapper for EnergypriceAPI.com. This allows you to quickly integrate our foreign exchange rate API and currency conversion API into your application. Check https://energypriceapi.com documentation for more information.

## Installation
Add to Gemfile.

```
gem 'energypriceapi'
```

## Usage

```ruby

api_key = 'SET_YOUR_API_KEY_HERE'
client = EnergypriceAPI::Client.new(api_key: api_key)
```
---
## Documentation

#### fetchSymbols()
```ruby
client.fetchSymbols()
```

[Link](https://energypriceapi.com/documentation#api_symbol)

---
#### fetchLive(base, currencies)

- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.fetchLive(base='USD', currencies=['BRENT','GASOLINE','NATURALGAS','WTI'])
```

[Link](https://energypriceapi.com/documentation#api_realtime)

---
#### fetchHistorical(date, base, currencies)

- `date` <[string]> Required. Pass in a string with format `YYYY-MM-DD`
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.fetchHistorical(date='2021-04-05', base='USD', currencies=['BRENT','GASOLINE','NATURALGAS','WTI'])
```

[Link](https://energypriceapi.com/documentation#api_historical)

---
#### convert(from_currency, to_currency, amount, date)

- `from_currency` <[string]> Optional. Pass in a base currency, defaults to USD.
- `to_currency` <[string]> Required. Specify currency you would like to convert to.
- `amount` <[number]> Required. The amount to convert.
- `date` <[string]> Optional. Specify date to use historical midpoint value for conversion with format `YYYY-MM-DD`. Otherwise, it will use live exchange rate date if value not passed in.

```ruby
client.convert(from_currency='USD', to_currency='EUR', amount=100, date='2021-04-05')
```

[Link](https://energypriceapi.com/documentation#api_convert)

---
#### timeframe(start_date, end_date, base, currencies)

- `start_date` <[string]> Required. Specify the start date of your timeframe using the format `YYYY-MM-DD`.
- `end_date` <[string]> Required. Specify the end date of your timeframe using the format `YYYY-MM-DD`.
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.timeframe(start_date='2021-04-05', end_date='2021-04-06', base='USD', currencies=['BRENT','GASOLINE','NATURALGAS','WTI'])
```

[Link](https://energypriceapi.com/documentation#api_timeframe)

---
#### change(start_date, end_date, base, currencies)

- `start_date` <[string]> Required. Specify the start date of your timeframe using the format `YYYY-MM-DD`.
- `end_date` <[string]> Required. Specify the end date of your timeframe using the format `YYYY-MM-DD`.
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[Array]<[string]>> Optional. Pass in an array of currencies to return values for.

```ruby
client.change(start_date='2021-04-05', end_date='2021-04-06', base='USD', currencies=['BRENT','GASOLINE','NATURALGAS','WTI'])
```

[Link](https://energypriceapi.com/documentation#api_change)

---
**[Official documentation](https://energypriceapi.com/documentation)**


---
## FAQ

- How do I get an API Key?

    Free API Keys are available [here](https://energypriceapi.com).

- I want more information

    Checkout our FAQs [here](https://energypriceapi.com/faq).


## Support

For support, get in touch using [this form](https://energypriceapi.com/contact).


[Array]: https://www.geeksforgeeks.org/ruby-data-types/ 'Array'
[number]: https://www.geeksforgeeks.org/ruby-data-types/ 'Number'
[string]: https://apidock.com/ruby/String 'String'