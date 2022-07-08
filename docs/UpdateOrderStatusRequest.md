# ClickAndDrop::UpdateOrderStatusRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_identifier** | **Integer** |  | [optional] |
| **order_reference** | **String** |  | [optional] |
| **status** | **String** | &lt;br/&gt; \&quot;&lt;i&gt;despatchedByOtherCourier&lt;/i&gt; \&quot;: &lt;b&gt;Reserved for ChannelShipper customers only - please visit  &lt;a href&#x3D;\&quot;https://channelshipper.com/\&quot; target&#x3D;\&quot;_self\&quot;&gt;ChannelShipper.com&lt;/a&gt; for more information&lt;/b&gt;  \&quot;&lt;i&gt;new&lt;/i&gt; \&quot;: This will remove the order from its batch. Order information will not be lost during this process.  Please be aware labels generated on orders which are then set to \&quot;new\&quot; (reset) are no longer valid  and must be destroyed. If the order is required to be despatched after setting to \&quot;new\&quot; status, a new  label must be generated to attach to the item.  Cancelled label information is automatically shared with Royal Mail Revenue Protection, and should a  cancelled label be identified on an item in the Royal Mail Network, you will be charged on your account  and an additional handling fee applied.  | [optional] |
| **tracking_number** | **String** |  | [optional] |
| **despatch_date** | **Time** |  | [optional] |
| **shipping_carrier** | **String** |  | [optional] |
| **shipping_service** | **String** |  | [optional] |

## Example

```ruby
require 'click_and_drop'

instance = ClickAndDrop::UpdateOrderStatusRequest.new(
  order_identifier: null,
  order_reference: null,
  status: null,
  tracking_number: null,
  despatch_date: null,
  shipping_carrier: null,
  shipping_service: null
)
```

