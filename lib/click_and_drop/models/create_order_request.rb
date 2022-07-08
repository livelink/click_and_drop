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
  class CreateOrderRequest
    attr_accessor :order_reference

    attr_accessor :recipient

    attr_accessor :sender

    attr_accessor :billing

    attr_accessor :packages

    attr_accessor :order_date

    attr_accessor :planned_despatch_date

    attr_accessor :special_instructions

    attr_accessor :subtotal

    attr_accessor :shipping_cost_charged

    attr_accessor :other_costs

    # Customs Duty Costs is only supported in DDP (Delivery Duty Paid) services
    attr_accessor :customs_duty_costs

    attr_accessor :total

    attr_accessor :currency_code

    attr_accessor :postage_details

    attr_accessor :tags

    attr_accessor :label

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'order_reference' => :'orderReference',
        :'recipient' => :'recipient',
        :'sender' => :'sender',
        :'billing' => :'billing',
        :'packages' => :'packages',
        :'order_date' => :'orderDate',
        :'planned_despatch_date' => :'plannedDespatchDate',
        :'special_instructions' => :'specialInstructions',
        :'subtotal' => :'subtotal',
        :'shipping_cost_charged' => :'shippingCostCharged',
        :'other_costs' => :'otherCosts',
        :'customs_duty_costs' => :'customsDutyCosts',
        :'total' => :'total',
        :'currency_code' => :'currencyCode',
        :'postage_details' => :'postageDetails',
        :'tags' => :'tags',
        :'label' => :'label'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'order_reference' => :'String',
        :'recipient' => :'RecipientDetailsRequest',
        :'sender' => :'SenderDetailsRequest',
        :'billing' => :'BillingDetailsRequest',
        :'packages' => :'Array<ShipmentPackageRequest>',
        :'order_date' => :'Time',
        :'planned_despatch_date' => :'Time',
        :'special_instructions' => :'String',
        :'subtotal' => :'Float',
        :'shipping_cost_charged' => :'Float',
        :'other_costs' => :'Float',
        :'customs_duty_costs' => :'Float',
        :'total' => :'Float',
        :'currency_code' => :'String',
        :'postage_details' => :'PostageDetailsRequest',
        :'tags' => :'Array<TagRequest>',
        :'label' => :'LabelGenerationRequest'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClickAndDrop::CreateOrderRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClickAndDrop::CreateOrderRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'order_reference')
        self.order_reference = attributes[:'order_reference']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'billing')
        self.billing = attributes[:'billing']
      end

      if attributes.key?(:'packages')
        if (value = attributes[:'packages']).is_a?(Array)
          self.packages = value
        end
      end

      if attributes.key?(:'order_date')
        self.order_date = attributes[:'order_date']
      end

      if attributes.key?(:'planned_despatch_date')
        self.planned_despatch_date = attributes[:'planned_despatch_date']
      end

      if attributes.key?(:'special_instructions')
        self.special_instructions = attributes[:'special_instructions']
      end

      if attributes.key?(:'subtotal')
        self.subtotal = attributes[:'subtotal']
      end

      if attributes.key?(:'shipping_cost_charged')
        self.shipping_cost_charged = attributes[:'shipping_cost_charged']
      end

      if attributes.key?(:'other_costs')
        self.other_costs = attributes[:'other_costs']
      end

      if attributes.key?(:'customs_duty_costs')
        self.customs_duty_costs = attributes[:'customs_duty_costs']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'postage_details')
        self.postage_details = attributes[:'postage_details']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@order_reference.nil? && @order_reference.to_s.length > 40
        invalid_properties.push('invalid value for "order_reference", the character length must be smaller than or equal to 40.')
      end

      if @recipient.nil?
        invalid_properties.push('invalid value for "recipient", recipient cannot be nil.')
      end

      if @order_date.nil?
        invalid_properties.push('invalid value for "order_date", order_date cannot be nil.')
      end

      if !@special_instructions.nil? && @special_instructions.to_s.length > 500
        invalid_properties.push('invalid value for "special_instructions", the character length must be smaller than or equal to 500.')
      end

      if @subtotal.nil?
        invalid_properties.push('invalid value for "subtotal", subtotal cannot be nil.')
      end

      if @subtotal > 999999
        invalid_properties.push('invalid value for "subtotal", must be smaller than or equal to 999999.')
      end

      if @subtotal < 0
        invalid_properties.push('invalid value for "subtotal", must be greater than or equal to 0.')
      end

      if @shipping_cost_charged.nil?
        invalid_properties.push('invalid value for "shipping_cost_charged", shipping_cost_charged cannot be nil.')
      end

      if @shipping_cost_charged > 999999
        invalid_properties.push('invalid value for "shipping_cost_charged", must be smaller than or equal to 999999.')
      end

      if @shipping_cost_charged < 0
        invalid_properties.push('invalid value for "shipping_cost_charged", must be greater than or equal to 0.')
      end

      if !@other_costs.nil? && @other_costs > 999999
        invalid_properties.push('invalid value for "other_costs", must be smaller than or equal to 999999.')
      end

      if !@other_costs.nil? && @other_costs < 0
        invalid_properties.push('invalid value for "other_costs", must be greater than or equal to 0.')
      end

      if !@customs_duty_costs.nil? && @customs_duty_costs > 99999.99
        invalid_properties.push('invalid value for "customs_duty_costs", must be smaller than or equal to 99999.99.')
      end

      if !@customs_duty_costs.nil? && @customs_duty_costs < 0
        invalid_properties.push('invalid value for "customs_duty_costs", must be greater than or equal to 0.')
      end

      if @total.nil?
        invalid_properties.push('invalid value for "total", total cannot be nil.')
      end

      if @total > 999999
        invalid_properties.push('invalid value for "total", must be smaller than or equal to 999999.')
      end

      if @total < 0
        invalid_properties.push('invalid value for "total", must be greater than or equal to 0.')
      end

      if !@currency_code.nil? && @currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "currency_code", the character length must be smaller than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@order_reference.nil? && @order_reference.to_s.length > 40
      return false if @recipient.nil?
      return false if @order_date.nil?
      return false if !@special_instructions.nil? && @special_instructions.to_s.length > 500
      return false if @subtotal.nil?
      return false if @subtotal > 999999
      return false if @subtotal < 0
      return false if @shipping_cost_charged.nil?
      return false if @shipping_cost_charged > 999999
      return false if @shipping_cost_charged < 0
      return false if !@other_costs.nil? && @other_costs > 999999
      return false if !@other_costs.nil? && @other_costs < 0
      return false if !@customs_duty_costs.nil? && @customs_duty_costs > 99999.99
      return false if !@customs_duty_costs.nil? && @customs_duty_costs < 0
      return false if @total.nil?
      return false if @total > 999999
      return false if @total < 0
      return false if !@currency_code.nil? && @currency_code.to_s.length > 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] order_reference Value to be assigned
    def order_reference=(order_reference)
      if !order_reference.nil? && order_reference.to_s.length > 40
        fail ArgumentError, 'invalid value for "order_reference", the character length must be smaller than or equal to 40.'
      end

      @order_reference = order_reference
    end

    # Custom attribute writer method with validation
    # @param [Object] special_instructions Value to be assigned
    def special_instructions=(special_instructions)
      if !special_instructions.nil? && special_instructions.to_s.length > 500
        fail ArgumentError, 'invalid value for "special_instructions", the character length must be smaller than or equal to 500.'
      end

      @special_instructions = special_instructions
    end

    # Custom attribute writer method with validation
    # @param [Object] subtotal Value to be assigned
    def subtotal=(subtotal)
      if subtotal.nil?
        fail ArgumentError, 'subtotal cannot be nil'
      end

      if subtotal > 999999
        fail ArgumentError, 'invalid value for "subtotal", must be smaller than or equal to 999999.'
      end

      if subtotal < 0
        fail ArgumentError, 'invalid value for "subtotal", must be greater than or equal to 0.'
      end

      @subtotal = subtotal
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_cost_charged Value to be assigned
    def shipping_cost_charged=(shipping_cost_charged)
      if shipping_cost_charged.nil?
        fail ArgumentError, 'shipping_cost_charged cannot be nil'
      end

      if shipping_cost_charged > 999999
        fail ArgumentError, 'invalid value for "shipping_cost_charged", must be smaller than or equal to 999999.'
      end

      if shipping_cost_charged < 0
        fail ArgumentError, 'invalid value for "shipping_cost_charged", must be greater than or equal to 0.'
      end

      @shipping_cost_charged = shipping_cost_charged
    end

    # Custom attribute writer method with validation
    # @param [Object] other_costs Value to be assigned
    def other_costs=(other_costs)
      if !other_costs.nil? && other_costs > 999999
        fail ArgumentError, 'invalid value for "other_costs", must be smaller than or equal to 999999.'
      end

      if !other_costs.nil? && other_costs < 0
        fail ArgumentError, 'invalid value for "other_costs", must be greater than or equal to 0.'
      end

      @other_costs = other_costs
    end

    # Custom attribute writer method with validation
    # @param [Object] customs_duty_costs Value to be assigned
    def customs_duty_costs=(customs_duty_costs)
      if !customs_duty_costs.nil? && customs_duty_costs > 99999.99
        fail ArgumentError, 'invalid value for "customs_duty_costs", must be smaller than or equal to 99999.99.'
      end

      if !customs_duty_costs.nil? && customs_duty_costs < 0
        fail ArgumentError, 'invalid value for "customs_duty_costs", must be greater than or equal to 0.'
      end

      @customs_duty_costs = customs_duty_costs
    end

    # Custom attribute writer method with validation
    # @param [Object] total Value to be assigned
    def total=(total)
      if total.nil?
        fail ArgumentError, 'total cannot be nil'
      end

      if total > 999999
        fail ArgumentError, 'invalid value for "total", must be smaller than or equal to 999999.'
      end

      if total < 0
        fail ArgumentError, 'invalid value for "total", must be greater than or equal to 0.'
      end

      @total = total
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_code Value to be assigned
    def currency_code=(currency_code)
      if !currency_code.nil? && currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency_code", the character length must be smaller than or equal to 3.'
      end

      @currency_code = currency_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          order_reference == o.order_reference &&
          recipient == o.recipient &&
          sender == o.sender &&
          billing == o.billing &&
          packages == o.packages &&
          order_date == o.order_date &&
          planned_despatch_date == o.planned_despatch_date &&
          special_instructions == o.special_instructions &&
          subtotal == o.subtotal &&
          shipping_cost_charged == o.shipping_cost_charged &&
          other_costs == o.other_costs &&
          customs_duty_costs == o.customs_duty_costs &&
          total == o.total &&
          currency_code == o.currency_code &&
          postage_details == o.postage_details &&
          tags == o.tags &&
          label == o.label
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [order_reference, recipient, sender, billing, packages, order_date, planned_despatch_date, special_instructions, subtotal, shipping_cost_charged, other_costs, customs_duty_costs, total, currency_code, postage_details, tags, label].hash
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
