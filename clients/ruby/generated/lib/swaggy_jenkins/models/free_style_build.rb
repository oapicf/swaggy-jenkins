=begin
#Swaggy Jenkins

#Jenkins API clients generated from Swagger / Open API specification

The version of the OpenAPI document: 1.1.1
Contact: blah@cliffano.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module SwaggyJenkinsClient
  class FreeStyleBuild
    attr_accessor :_class

    attr_accessor :number

    attr_accessor :url

    attr_accessor :actions

    attr_accessor :building

    attr_accessor :description

    attr_accessor :display_name

    attr_accessor :duration

    attr_accessor :estimated_duration

    attr_accessor :executor

    attr_accessor :full_display_name

    attr_accessor :id

    attr_accessor :keep_log

    attr_accessor :queue_id

    attr_accessor :result

    attr_accessor :timestamp

    attr_accessor :built_on

    attr_accessor :change_set

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_class' => :'_class',
        :'number' => :'number',
        :'url' => :'url',
        :'actions' => :'actions',
        :'building' => :'building',
        :'description' => :'description',
        :'display_name' => :'displayName',
        :'duration' => :'duration',
        :'estimated_duration' => :'estimatedDuration',
        :'executor' => :'executor',
        :'full_display_name' => :'fullDisplayName',
        :'id' => :'id',
        :'keep_log' => :'keepLog',
        :'queue_id' => :'queueId',
        :'result' => :'result',
        :'timestamp' => :'timestamp',
        :'built_on' => :'builtOn',
        :'change_set' => :'changeSet'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_class' => :'String',
        :'number' => :'Integer',
        :'url' => :'String',
        :'actions' => :'Array<CauseAction>',
        :'building' => :'Boolean',
        :'description' => :'String',
        :'display_name' => :'String',
        :'duration' => :'Integer',
        :'estimated_duration' => :'Integer',
        :'executor' => :'String',
        :'full_display_name' => :'String',
        :'id' => :'String',
        :'keep_log' => :'Boolean',
        :'queue_id' => :'Integer',
        :'result' => :'String',
        :'timestamp' => :'Integer',
        :'built_on' => :'String',
        :'change_set' => :'EmptyChangeLogSet'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggyJenkinsClient::FreeStyleBuild` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggyJenkinsClient::FreeStyleBuild`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_class')
        self._class = attributes[:'_class']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'actions')
        if (value = attributes[:'actions']).is_a?(Array)
          self.actions = value
        end
      end

      if attributes.key?(:'building')
        self.building = attributes[:'building']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'estimated_duration')
        self.estimated_duration = attributes[:'estimated_duration']
      end

      if attributes.key?(:'executor')
        self.executor = attributes[:'executor']
      end

      if attributes.key?(:'full_display_name')
        self.full_display_name = attributes[:'full_display_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'keep_log')
        self.keep_log = attributes[:'keep_log']
      end

      if attributes.key?(:'queue_id')
        self.queue_id = attributes[:'queue_id']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'built_on')
        self.built_on = attributes[:'built_on']
      end

      if attributes.key?(:'change_set')
        self.change_set = attributes[:'change_set']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _class == o._class &&
          number == o.number &&
          url == o.url &&
          actions == o.actions &&
          building == o.building &&
          description == o.description &&
          display_name == o.display_name &&
          duration == o.duration &&
          estimated_duration == o.estimated_duration &&
          executor == o.executor &&
          full_display_name == o.full_display_name &&
          id == o.id &&
          keep_log == o.keep_log &&
          queue_id == o.queue_id &&
          result == o.result &&
          timestamp == o.timestamp &&
          built_on == o.built_on &&
          change_set == o.change_set
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_class, number, url, actions, building, description, display_name, duration, estimated_duration, executor, full_display_name, id, keep_log, queue_id, result, timestamp, built_on, change_set].hash
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
        klass = SwaggyJenkinsClient.const_get(type)
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
