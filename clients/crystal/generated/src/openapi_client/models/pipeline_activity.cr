# #Swaggy Jenkins
#
##Jenkins API clients generated from Swagger / Open API specification
#
#The version of the OpenAPI document: 2.0.1-pre.0
#Contact: blah+oapicf@cliffano.com
#Generated by: https://openapi-generator.tech
#Generator version: 7.4.0
#

require "big"
require "json"
require "time"

module OpenAPIClient
  class PipelineActivity
    include JSON::Serializable

    # Optional properties
    @[JSON::Field(key: "_class", type: String?, nillable: true, emit_null: false)]
    property _class : String?

    @[JSON::Field(key: "artifacts", type: Array(PipelineActivityartifacts)?, nillable: true, emit_null: false)]
    property artifacts : Array(PipelineActivityartifacts)?

    @[JSON::Field(key: "durationInMillis", type: Int32?, nillable: true, emit_null: false)]
    property duration_in_millis : Int32?

    @[JSON::Field(key: "estimatedDurationInMillis", type: Int32?, nillable: true, emit_null: false)]
    property estimated_duration_in_millis : Int32?

    @[JSON::Field(key: "enQueueTime", type: String?, nillable: true, emit_null: false)]
    property en_queue_time : String?

    @[JSON::Field(key: "endTime", type: String?, nillable: true, emit_null: false)]
    property end_time : String?

    @[JSON::Field(key: "id", type: String?, nillable: true, emit_null: false)]
    property id : String?

    @[JSON::Field(key: "organization", type: String?, nillable: true, emit_null: false)]
    property organization : String?

    @[JSON::Field(key: "pipeline", type: String?, nillable: true, emit_null: false)]
    property pipeline : String?

    @[JSON::Field(key: "result", type: String?, nillable: true, emit_null: false)]
    property result : String?

    @[JSON::Field(key: "runSummary", type: String?, nillable: true, emit_null: false)]
    property run_summary : String?

    @[JSON::Field(key: "startTime", type: String?, nillable: true, emit_null: false)]
    property start_time : String?

    @[JSON::Field(key: "state", type: String?, nillable: true, emit_null: false)]
    property state : String?

    @[JSON::Field(key: "type", type: String?, nillable: true, emit_null: false)]
    property _type : String?

    @[JSON::Field(key: "commitId", type: String?, nillable: true, emit_null: false)]
    property commit_id : String?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@_class : String?, @artifacts : Array(PipelineActivityartifacts)?, @duration_in_millis : Int32?, @estimated_duration_in_millis : Int32?, @en_queue_time : String?, @end_time : String?, @id : String?, @organization : String?, @pipeline : String?, @result : String?, @run_summary : String?, @start_time : String?, @state : String?, @_type : String?, @commit_id : String?)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
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
      return true if self.same?(o)
      self.class == o.class &&
          _class == o._class &&
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
          _type == o._type &&
          commit_id == o.commit_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_class, artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, id, organization, pipeline, result, run_summary, start_time, state, _type, commit_id].hash
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
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
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
        ({} of Symbol => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenAPIClient.const_get(type)
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
      hash = {} of Symbol => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
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
        ({} of Symbol => String).tap do |hash|
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
