=begin
#ChannelShipper & Royal Mail Public API

#Import your orders, retrieve your orders and generate labels.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module ClickAndDrop
  class GetShippingDetailsResult
    attr_accessor :shipping_cost

    attr_accessor :tracking_number

    attr_accessor :shipping_tracking_status

    attr_accessor :service_code

    attr_accessor :delivery_service

    attr_accessor :receive_email_notification

    attr_accessor :receive_sms_notification

    attr_accessor :guaranteed_saturday_delivery

    attr_accessor :request_signature_upon_delivery

    attr_accessor :is_local_collect

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'shipping_cost' => :'shippingCost',
        :'tracking_number' => :'trackingNumber',
        :'shipping_tracking_status' => :'shippingTrackingStatus',
        :'service_code' => :'serviceCode',
        :'delivery_service' => :'deliveryService',
        :'receive_email_notification' => :'receiveEmailNotification',
        :'receive_sms_notification' => :'receiveSmsNotification',
        :'guaranteed_saturday_delivery' => :'guaranteedSaturdayDelivery',
        :'request_signature_upon_delivery' => :'requestSignatureUponDelivery',
        :'is_local_collect' => :'isLocalCollect'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'shipping_cost' => :'Float',
        :'tracking_number' => :'String',
        :'shipping_tracking_status' => :'String',
        :'service_code' => :'String',
        :'delivery_service' => :'String',
        :'receive_email_notification' => :'Boolean',
        :'receive_sms_notification' => :'Boolean',
        :'guaranteed_saturday_delivery' => :'Boolean',
        :'request_signature_upon_delivery' => :'Boolean',
        :'is_local_collect' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClickAndDrop::GetShippingDetailsResult` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClickAndDrop::GetShippingDetailsResult`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shipping_cost')
        self.shipping_cost = attributes[:'shipping_cost']
      end

      if attributes.key?(:'tracking_number')
        self.tracking_number = attributes[:'tracking_number']
      end

      if attributes.key?(:'shipping_tracking_status')
        self.shipping_tracking_status = attributes[:'shipping_tracking_status']
      end

      if attributes.key?(:'service_code')
        self.service_code = attributes[:'service_code']
      end

      if attributes.key?(:'delivery_service')
        self.delivery_service = attributes[:'delivery_service']
      end

      if attributes.key?(:'receive_email_notification')
        self.receive_email_notification = attributes[:'receive_email_notification']
      end

      if attributes.key?(:'receive_sms_notification')
        self.receive_sms_notification = attributes[:'receive_sms_notification']
      end

      if attributes.key?(:'guaranteed_saturday_delivery')
        self.guaranteed_saturday_delivery = attributes[:'guaranteed_saturday_delivery']
      end

      if attributes.key?(:'request_signature_upon_delivery')
        self.request_signature_upon_delivery = attributes[:'request_signature_upon_delivery']
      end

      if attributes.key?(:'is_local_collect')
        self.is_local_collect = attributes[:'is_local_collect']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @shipping_cost.nil?
        invalid_properties.push('invalid value for "shipping_cost", shipping_cost cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @shipping_cost.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          shipping_cost == o.shipping_cost &&
          tracking_number == o.tracking_number &&
          shipping_tracking_status == o.shipping_tracking_status &&
          service_code == o.service_code &&
          delivery_service == o.delivery_service &&
          receive_email_notification == o.receive_email_notification &&
          receive_sms_notification == o.receive_sms_notification &&
          guaranteed_saturday_delivery == o.guaranteed_saturday_delivery &&
          request_signature_upon_delivery == o.request_signature_upon_delivery &&
          is_local_collect == o.is_local_collect
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [shipping_cost, tracking_number, shipping_tracking_status, service_code, delivery_service, receive_email_notification, receive_sms_notification, guaranteed_saturday_delivery, request_signature_upon_delivery, is_local_collect].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ClickAndDrop.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
