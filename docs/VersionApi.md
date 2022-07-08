# ClickAndDrop::VersionApi

All URIs are relative to */api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_version_async**](VersionApi.md#get_version_async) | **GET** /version | Get API version details. |


## get_version_async

> <GetVersionResource> get_version_async

Get API version details.

### Examples

```ruby
require 'time'
require 'click_and_drop'

api_instance = ClickAndDrop::VersionApi.new

begin
  # Get API version details.
  result = api_instance.get_version_async
  p result
rescue ClickAndDrop::ApiError => e
  puts "Error when calling VersionApi->get_version_async: #{e}"
end
```

#### Using the get_version_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVersionResource>, Integer, Hash)> get_version_async_with_http_info

```ruby
begin
  # Get API version details.
  data, status_code, headers = api_instance.get_version_async_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVersionResource>
rescue ClickAndDrop::ApiError => e
  puts "Error when calling VersionApi->get_version_async_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetVersionResource**](GetVersionResource.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

