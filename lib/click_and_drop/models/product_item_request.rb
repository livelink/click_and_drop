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
  class ProductItemRequest
    attr_accessor :name

    # The presence or not of field <b>SKU</b> and other fields in the request body will determine which of the following behaviours occur:- <br>1) A minimum of <b>SKU</b>, <b>unitValue</b>, <b>unitWeightInGrams</b> and <b>quantity</b> provided - In addition to the provided product fields being used for the order creation, an existing account Product with matching SKU will be overwritten with all provided product parameters. If no existing account Product with matching SKU can be found then a new product will be created with the provided SKU and product parameters.<br>2) <b>SKU</b>, <b>quantity</b> provided and <b>no other fields</b> provided - An account Product with the provided SKU will be used for the order if it exists.<br>3) <b>SKU not provided</b> and a minimum of <b>unitValue</b>, <b>unitWeightInGrams</b> and <b>quantity</b> provided - All provided product fields will be used for the order creation.<br>4) All other scenarios will result in a validation error.
    attr_accessor :sku

    attr_accessor :quantity

    attr_accessor :unit_value

    attr_accessor :unit_weight_in_grams

    attr_accessor :customs_description

    attr_accessor :extended_customs_description

    attr_accessor :customs_code

    attr_accessor :origin_country_code

    attr_accessor :customs_declaration_category

    attr_accessor :requires_export_licence

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'sku' => :'SKU',
        :'quantity' => :'quantity',
        :'unit_value' => :'unitValue',
        :'unit_weight_in_grams' => :'unitWeightInGrams',
        :'customs_description' => :'customsDescription',
        :'extended_customs_description' => :'extendedCustomsDescription',
        :'customs_code' => :'customsCode',
        :'origin_country_code' => :'originCountryCode',
        :'customs_declaration_category' => :'customsDeclarationCategory',
        :'requires_export_licence' => :'requiresExportLicence'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'sku' => :'String',
        :'quantity' => :'Integer',
        :'unit_value' => :'Float',
        :'unit_weight_in_grams' => :'Integer',
        :'customs_description' => :'String',
        :'extended_customs_description' => :'String',
        :'customs_code' => :'String',
        :'origin_country_code' => :'String',
        :'customs_declaration_category' => :'String',
        :'requires_export_licence' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClickAndDrop::ProductItemRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClickAndDrop::ProductItemRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'unit_value')
        self.unit_value = attributes[:'unit_value']
      end

      if attributes.key?(:'unit_weight_in_grams')
        self.unit_weight_in_grams = attributes[:'unit_weight_in_grams']
      end

      if attributes.key?(:'customs_description')
        self.customs_description = attributes[:'customs_description']
      end

      if attributes.key?(:'extended_customs_description')
        self.extended_customs_description = attributes[:'extended_customs_description']
      end

      if attributes.key?(:'customs_code')
        self.customs_code = attributes[:'customs_code']
      end

      if attributes.key?(:'origin_country_code')
        self.origin_country_code = attributes[:'origin_country_code']
      end

      if attributes.key?(:'customs_declaration_category')
        self.customs_declaration_category = attributes[:'customs_declaration_category']
      end

      if attributes.key?(:'requires_export_licence')
        self.requires_export_licence = attributes[:'requires_export_licence']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 800
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 800.')
      end

      if !@sku.nil? && @sku.to_s.length > 100
        invalid_properties.push('invalid value for "sku", the character length must be smaller than or equal to 100.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @quantity > 999999
        invalid_properties.push('invalid value for "quantity", must be smaller than or equal to 999999.')
      end

      if @quantity < 1
        invalid_properties.push('invalid value for "quantity", must be greater than or equal to 1.')
      end

      if !@unit_value.nil? && @unit_value > 999999
        invalid_properties.push('invalid value for "unit_value", must be smaller than or equal to 999999.')
      end

      if !@unit_value.nil? && @unit_value < 0
        invalid_properties.push('invalid value for "unit_value", must be greater than or equal to 0.')
      end

      if !@unit_weight_in_grams.nil? && @unit_weight_in_grams > 999999
        invalid_properties.push('invalid value for "unit_weight_in_grams", must be smaller than or equal to 999999.')
      end

      if !@unit_weight_in_grams.nil? && @unit_weight_in_grams < 0
        invalid_properties.push('invalid value for "unit_weight_in_grams", must be greater than or equal to 0.')
      end

      if !@customs_description.nil? && @customs_description.to_s.length > 50
        invalid_properties.push('invalid value for "customs_description", the character length must be smaller than or equal to 50.')
      end

      if !@extended_customs_description.nil? && @extended_customs_description.to_s.length > 300
        invalid_properties.push('invalid value for "extended_customs_description", the character length must be smaller than or equal to 300.')
      end

      if !@customs_code.nil? && @customs_code.to_s.length > 10
        invalid_properties.push('invalid value for "customs_code", the character length must be smaller than or equal to 10.')
      end

      if !@origin_country_code.nil? && @origin_country_code.to_s.length > 3
        invalid_properties.push('invalid value for "origin_country_code", the character length must be smaller than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 800
      return false if !@sku.nil? && @sku.to_s.length > 100
      return false if @quantity.nil?
      return false if @quantity > 999999
      return false if @quantity < 1
      return false if !@unit_value.nil? && @unit_value > 999999
      return false if !@unit_value.nil? && @unit_value < 0
      return false if !@unit_weight_in_grams.nil? && @unit_weight_in_grams > 999999
      return false if !@unit_weight_in_grams.nil? && @unit_weight_in_grams < 0
      return false if !@customs_description.nil? && @customs_description.to_s.length > 50
      return false if !@extended_customs_description.nil? && @extended_customs_description.to_s.length > 300
      return false if !@customs_code.nil? && @customs_code.to_s.length > 10
      return false if !@origin_country_code.nil? && @origin_country_code.to_s.length > 3
      customs_declaration_category_validator = EnumAttributeValidator.new('String', ["none", "gift", "commercialSample", "documents", "other", "returnedGoods", "saleOfGoods", "mixedContent"])
      return false unless customs_declaration_category_validator.valid?(@customs_declaration_category)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 800
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 800.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] sku Value to be assigned
    def sku=(sku)
      if !sku.nil? && sku.to_s.length > 100
        fail ArgumentError, 'invalid value for "sku", the character length must be smaller than or equal to 100.'
      end

      @sku = sku
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if quantity.nil?
        fail ArgumentError, 'quantity cannot be nil'
      end

      if quantity > 999999
        fail ArgumentError, 'invalid value for "quantity", must be smaller than or equal to 999999.'
      end

      if quantity < 1
        fail ArgumentError, 'invalid value for "quantity", must be greater than or equal to 1.'
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_value Value to be assigned
    def unit_value=(unit_value)
      if !unit_value.nil? && unit_value > 999999
        fail ArgumentError, 'invalid value for "unit_value", must be smaller than or equal to 999999.'
      end

      if !unit_value.nil? && unit_value < 0
        fail ArgumentError, 'invalid value for "unit_value", must be greater than or equal to 0.'
      end

      @unit_value = unit_value
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_weight_in_grams Value to be assigned
    def unit_weight_in_grams=(unit_weight_in_grams)
      if !unit_weight_in_grams.nil? && unit_weight_in_grams > 999999
        fail ArgumentError, 'invalid value for "unit_weight_in_grams", must be smaller than or equal to 999999.'
      end

      if !unit_weight_in_grams.nil? && unit_weight_in_grams < 0
        fail ArgumentError, 'invalid value for "unit_weight_in_grams", must be greater than or equal to 0.'
      end

      @unit_weight_in_grams = unit_weight_in_grams
    end

    # Custom attribute writer method with validation
    # @param [Object] customs_description Value to be assigned
    def customs_description=(customs_description)
      if !customs_description.nil? && customs_description.to_s.length > 50
        fail ArgumentError, 'invalid value for "customs_description", the character length must be smaller than or equal to 50.'
      end

      @customs_description = customs_description
    end

    # Custom attribute writer method with validation
    # @param [Object] extended_customs_description Value to be assigned
    def extended_customs_description=(extended_customs_description)
      if !extended_customs_description.nil? && extended_customs_description.to_s.length > 300
        fail ArgumentError, 'invalid value for "extended_customs_description", the character length must be smaller than or equal to 300.'
      end

      @extended_customs_description = extended_customs_description
    end

    # Custom attribute writer method with validation
    # @param [Object] customs_code Value to be assigned
    def customs_code=(customs_code)
      if !customs_code.nil? && customs_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "customs_code", the character length must be smaller than or equal to 10.'
      end

      @customs_code = customs_code
    end

    # Custom attribute writer method with validation
    # @param [Object] origin_country_code Value to be assigned
    def origin_country_code=(origin_country_code)
      if !origin_country_code.nil? && origin_country_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "origin_country_code", the character length must be smaller than or equal to 3.'
      end

      @origin_country_code = origin_country_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customs_declaration_category Object to be assigned
    def customs_declaration_category=(customs_declaration_category)
      validator = EnumAttributeValidator.new('String', ["none", "gift", "commercialSample", "documents", "other", "returnedGoods", "saleOfGoods", "mixedContent"])
      unless validator.valid?(customs_declaration_category)
        fail ArgumentError, "invalid value for \"customs_declaration_category\", must be one of #{validator.allowable_values}."
      end
      @customs_declaration_category = customs_declaration_category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          sku == o.sku &&
          quantity == o.quantity &&
          unit_value == o.unit_value &&
          unit_weight_in_grams == o.unit_weight_in_grams &&
          customs_description == o.customs_description &&
          extended_customs_description == o.extended_customs_description &&
          customs_code == o.customs_code &&
          origin_country_code == o.origin_country_code &&
          customs_declaration_category == o.customs_declaration_category &&
          requires_export_licence == o.requires_export_licence
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, sku, quantity, unit_value, unit_weight_in_grams, customs_description, extended_customs_description, customs_code, origin_country_code, customs_declaration_category, requires_export_licence].hash
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