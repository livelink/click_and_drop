# ClickAndDrop::AddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full_name** | **String** |  | [optional] |
| **company_name** | **String** |  | [optional] |
| **address_line1** | **String** |  |  |
| **address_line2** | **String** |  | [optional] |
| **address_line3** | **String** |  | [optional] |
| **city** | **String** |  |  |
| **county** | **String** |  | [optional] |
| **postcode** | **String** |  | [optional] |
| **country_code** | **String** |  |  |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::AddressRequest.new(
  full_name: null,
  company_name: null,
  address_line1: null,
  address_line2: null,
  address_line3: null,
  city: null,
  county: null,
  postcode: null,
  country_code: null
)
```

