=begin
#Swaggy Jenkins

#Jenkins API clients generated from Swagger / Open API specification

The version of the OpenAPI document: 1.1.2-pre.0
Contact: blah@cliffano.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module SwaggyJenkinsClient
  class PipelinelatestRun
    attr_accessor :artifacts

    attr_accessor :duration_in_millis

    attr_accessor :estimated_duration_in_millis

    attr_accessor :en_queue_time

    attr_accessor :end_time

    attr_accessor :id

    attr_accessor :organization

    attr_accessor :pipeline

    attr_accessor :result

    attr_accessor :run_summary

    attr_accessor :start_time

    attr_accessor :state

    attr_accessor :type

    attr_accessor :commit_id

    attr_accessor :_class

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'artifacts' => :'artifacts',
        :'duration_in_millis' => :'durationInMillis',
        :'estimated_duration_in_millis' => :'estimatedDurationInMillis',
        :'en_queue_time' => :'enQueueTime',
        :'end_time' => :'endTime',
        :'id' => :'id',
        :'organization' => :'organization',
        :'pipeline' => :'pipeline',
        :'result' => :'result',
        :'run_summary' => :'runSummary',
        :'start_time' => :'startTime',
        :'state' => :'state',
        :'type' => :'type',
        :'commit_id' => :'commitId',
        :'_class' => :'_class'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'artifacts' => :'Array<PipelinelatestRunartifacts>',
        :'duration_in_millis' => :'Integer',
        :'estimated_duration_in_millis' => :'Integer',
        :'en_queue_time' => :'String',
        :'end_time' => :'String',
        :'id' => :'String',
        :'organization' => :'String',
        :'pipeline' => :'String',
        :'result' => :'String',
        :'run_summary' => :'String',
        :'start_time' => :'String',
        :'state' => :'String',
        :'type' => :'String',
        :'commit_id' => :'String',
        :'_class' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggyJenkinsClient::PipelinelatestRun` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggyJenkinsClient::PipelinelatestRun`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'artifacts')
        if (value = attributes[:'artifacts']).is_a?(Array)
          self.artifacts = value
        end
      end

      if attributes.key?(:'duration_in_millis')
        self.duration_in_millis = attributes[:'duration_in_millis']
      end

      if attributes.key?(:'estimated_duration_in_millis')
        self.estimated_duration_in_millis = attributes[:'estimated_duration_in_millis']
      end

      if attributes.key?(:'en_queue_time')
        self.en_queue_time = attributes[:'en_queue_time']
      end

      if attributes.key?(:'end_time')
        self.end_time = attributes[:'end_time']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.key?(:'pipeline')
        self.pipeline = attributes[:'pipeline']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'run_summary')
        self.run_summary = attributes[:'run_summary']
      end

      if attributes.key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'commit_id')
        self.commit_id = attributes[:'commit_id']
      end

      if attributes.key?(:'_class')
        self._class = attributes[:'_class']
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
          artifacts == o.artifacts &&
          duration_in_millis == o.duration_in_millis &&
          estimated_duration_in_millis == o.estimated_duration_in_millis &&
          en_queue_time == o.en_queue_time &&
          end_time == o.end_time &&
          id == o.id &&
          organization == o.organization &&
          pipeline == o.pipeline &&
          result == o.result &&
          run_summary == o.run_summary &&
          start_time == o.start_time &&
          state == o.state &&
          type == o.type &&
          commit_id == o.commit_id &&
          _class == o._class
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, id, organization, pipeline, result, run_summary, start_time, state, type, commit_id, _class].hash
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
