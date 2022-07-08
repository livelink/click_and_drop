# ClickAndDrop::LabelsApi

All URIs are relative to */api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_orders_label_async**](LabelsApi.md#get_orders_label_async) | **GET** /orders/{orderIdentifiers}/label | Return a single PDF file with generated label and/or associated document(s) |


## get_orders_label_async

> File get_orders_label_async(order_identifiers, document_type, opts)

Return a single PDF file with generated label and/or associated document(s)

<b>Reserved for OBA customers only</b>  The account \"Label format\" settings page will control the page format settings used to print the postage label  and associated documents. Certain combinations of these settings may prevent associated documents from being  printed together with the postage label within a single document. If this occurs the documentType option can be  used in a separate call to print missing documents. 

### Examples

```ruby
require 'time'
require 'click_and_drop'
# setup authorization
ClickAndDrop.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Bearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Bearer'] = 'Bearer'
end

api_instance = ClickAndDrop::LabelsApi.new
order_identifiers = 'order_identifiers_example' # String | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks.
document_type = 'postageLabel' # String | Document generation mode. When documentType is set to \"postageLabel\" the additional parameters below must be used. These additional parameters will be ignored when documentType is not set to \"postageLabel\"
opts = {
  include_returns_label: true, # Boolean | Include returns label. Required when documentType is set to 'postageLabel'
  include_cn: true # Boolean | Include CN22/CN23 with label. Optional parameter. If this parameter is used the setting will override the default account behaviour specified in the \"Label format\" setting \"Generate customs declarations with orders\"
}

begin
  # Return a single PDF file with generated label and/or associated document(s)
  result = api_instance.get_orders_label_async(order_identifiers, document_type, opts)
  p result
rescue ClickAndDrop::ApiError => e
  puts "Error when calling LabelsApi->get_orders_label_async: #{e}"
end
```

#### Using the get_orders_label_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_orders_label_async_with_http_info(order_identifiers, document_type, opts)

```ruby
begin
  # Return a single PDF file with generated label and/or associated document(s)
  data, status_code, headers = api_instance.get_orders_label_async_with_http_info(order_identifiers, document_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue ClickAndDrop::ApiError => e
  puts "Error when calling LabelsApi->get_orders_label_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifiers** | **String** | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks. |  |
| **document_type** | **String** | Document generation mode. When documentType is set to \&quot;postageLabel\&quot; the additional parameters below must be used. These additional parameters will be ignored when documentType is not set to \&quot;postageLabel\&quot; |  |
| **include_returns_label** | **Boolean** | Include returns label. Required when documentType is set to &#39;postageLabel&#39; | [optional] |
| **include_cn** | **Boolean** | Include CN22/CN23 with label. Optional parameter. If this parameter is used the setting will override the default account behaviour specified in the \&quot;Label format\&quot; setting \&quot;Generate customs declarations with orders\&quot; | [optional] |

### Return type

**File**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json

