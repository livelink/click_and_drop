# ClickAndDrop::OrdersApi

All URIs are relative to */api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_orders_async**](OrdersApi.md#create_orders_async) | **POST** /orders | Create orders |
| [**delete_orders_async**](OrdersApi.md#delete_orders_async) | **DELETE** /orders/{orderIdentifiers} | Delete orders |
| [**get_orders_async**](OrdersApi.md#get_orders_async) | **GET** /orders/{orderIdentifiers} | Retrieve orders |
| [**get_orders_with_details_async**](OrdersApi.md#get_orders_with_details_async) | **GET** /orders/{orderIdentifiers}/full | Retrieve orders details |
| [**update_orders_status_async**](OrdersApi.md#update_orders_status_async) | **PUT** /orders/status | Set order status |


## create_orders_async

> <CreateOrdersResponse> create_orders_async(request)

Create orders

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

api_instance = ClickAndDrop::OrdersApi.new
request = ClickAndDrop::CreateOrdersRequest.new({items: [ClickAndDrop::CreateOrderRequest.new({recipient: ClickAndDrop::RecipientDetailsRequest.new, order_date: Time.now, subtotal: 3.56, shipping_cost_charged: 3.56, total: 3.56})]}) # CreateOrdersRequest | 

begin
  # Create orders
  result = api_instance.create_orders_async(request)
  p result
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->create_orders_async: #{e}"
end
```

#### Using the create_orders_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrdersResponse>, Integer, Hash)> create_orders_async_with_http_info(request)

```ruby
begin
  # Create orders
  data, status_code, headers = api_instance.create_orders_async_with_http_info(request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrdersResponse>
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->create_orders_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**CreateOrdersRequest**](CreateOrdersRequest.md) |  |  |

### Return type

[**CreateOrdersResponse**](CreateOrdersResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_orders_async

> <DeleteOrdersResource> delete_orders_async(order_identifiers)

Delete orders

<b>Reserved for ChannelShipper customers only - please visit  <a href=\"https://channelshipper.com/\" target=\"_self\">ChannelShipper.com</a> for more information</b>  Please be aware labels generated on orders which are deleted are no longer valid and must be destroyed.  Cancelled label information is automatically shared with Royal Mail Revenue Protection, and should  a cancelled label be identified on an item in the Royal Mail Network, you will be charged on your account  and an additional handling fee applied. 

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

api_instance = ClickAndDrop::OrdersApi.new
order_identifiers = 'order_identifiers_example' # String | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks.

begin
  # Delete orders
  result = api_instance.delete_orders_async(order_identifiers)
  p result
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->delete_orders_async: #{e}"
end
```

#### Using the delete_orders_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteOrdersResource>, Integer, Hash)> delete_orders_async_with_http_info(order_identifiers)

```ruby
begin
  # Delete orders
  data, status_code, headers = api_instance.delete_orders_async_with_http_info(order_identifiers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteOrdersResource>
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->delete_orders_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifiers** | **String** | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks. |  |

### Return type

[**DeleteOrdersResource**](DeleteOrdersResource.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orders_async

> <Array<GetOrderInfoResource>> get_orders_async(order_identifiers)

Retrieve orders

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

api_instance = ClickAndDrop::OrdersApi.new
order_identifiers = 'order_identifiers_example' # String | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks.

begin
  # Retrieve orders
  result = api_instance.get_orders_async(order_identifiers)
  p result
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->get_orders_async: #{e}"
end
```

#### Using the get_orders_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetOrderInfoResource>>, Integer, Hash)> get_orders_async_with_http_info(order_identifiers)

```ruby
begin
  # Retrieve orders
  data, status_code, headers = api_instance.get_orders_async_with_http_info(order_identifiers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetOrderInfoResource>>
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->get_orders_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifiers** | **String** | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks. |  |

### Return type

[**Array&lt;GetOrderInfoResource&gt;**](GetOrderInfoResource.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orders_with_details_async

> <Array<GetOrderDetailsResource>> get_orders_with_details_async(order_identifiers)

Retrieve orders details

<b>Reserved for ChannelShipper customers only - please visit <a href=\"https://channelshipper.com/\" target=\"_self\">ChannelShipper.com</a> for more information</b>

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

api_instance = ClickAndDrop::OrdersApi.new
order_identifiers = 'order_identifiers_example' # String | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks.

begin
  # Retrieve orders details
  result = api_instance.get_orders_with_details_async(order_identifiers)
  p result
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->get_orders_with_details_async: #{e}"
end
```

#### Using the get_orders_with_details_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetOrderDetailsResource>>, Integer, Hash)> get_orders_with_details_async_with_http_info(order_identifiers)

```ruby
begin
  # Retrieve orders details
  data, status_code, headers = api_instance.get_orders_with_details_async_with_http_info(order_identifiers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetOrderDetailsResource>>
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->get_orders_with_details_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifiers** | **String** | One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks. |  |

### Return type

[**Array&lt;GetOrderDetailsResource&gt;**](GetOrderDetailsResource.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_orders_status_async

> <UpdateOrderStatusResponse> update_orders_status_async(request)

Set order status

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

api_instance = ClickAndDrop::OrdersApi.new
request = ClickAndDrop::UpdateOrdersStatusRequest.new # UpdateOrdersStatusRequest | At least one of 'orderIdentifier' and 'orderReference' is required. Providing both is disallowed to avoid ambiguity.  When the status is set to 'despatchedByOtherCourier', if the optional parameter 'trackingNumber' is provided  then the parameters 'despatchDate', 'shippingCarrier' and 'shippingService' are also required. 

begin
  # Set order status
  result = api_instance.update_orders_status_async(request)
  p result
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->update_orders_status_async: #{e}"
end
```

#### Using the update_orders_status_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrderStatusResponse>, Integer, Hash)> update_orders_status_async_with_http_info(request)

```ruby
begin
  # Set order status
  data, status_code, headers = api_instance.update_orders_status_async_with_http_info(request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrderStatusResponse>
rescue ClickAndDrop::ApiError => e
  puts "Error when calling OrdersApi->update_orders_status_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**UpdateOrdersStatusRequest**](UpdateOrdersStatusRequest.md) | At least one of &#39;orderIdentifier&#39; and &#39;orderReference&#39; is required. Providing both is disallowed to avoid ambiguity.  When the status is set to &#39;despatchedByOtherCourier&#39;, if the optional parameter &#39;trackingNumber&#39; is provided  then the parameters &#39;despatchDate&#39;, &#39;shippingCarrier&#39; and &#39;shippingService&#39; are also required.  |  |

### Return type

[**UpdateOrderStatusResponse**](UpdateOrderStatusResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

