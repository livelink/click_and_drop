# ClickAndDrop::ShipmentPackageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **weight_in_grams** | **Integer** |  |  |
| **package_format_identifier** | **String** | &lt;b&gt;Value &#39;custom&#39; is reserved for ChannelShipper customers only - please visit &lt;a href&#x3D;&#39;https://channelshipper.com/&#39; target&#x3D;&#39;_self&#39;&gt;ChannelShipper.com&lt;/a&gt; for more information&lt;/b&gt; |  |
| **custom_package_format_identifier** | **String** | Is required if &#39;packageFormatIdentifier&#39; is provided as &#39;custom&#39;. &lt;b&gt;Reserved for ChannelShipper customers only - please visit &lt;a href&#x3D;&#39;https://channelshipper.com/&#39; target&#x3D;&#39;_self&#39;&gt;ChannelShipper.com&lt;/a&gt; for more information&lt;/b&gt;. | [optional] |
| **dimensions** | [**DimensionsRequest**](DimensionsRequest.md) |  | [optional] |
| **contents** | [**Array&lt;ProductItemRequest&gt;**](ProductItemRequest.md) |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::ShipmentPackageRequest.new(
  weight_in_grams: null,
  package_format_identifier: null,
  custom_package_format_identifier: null,
  dimensions: null,
  contents: null
)
```

