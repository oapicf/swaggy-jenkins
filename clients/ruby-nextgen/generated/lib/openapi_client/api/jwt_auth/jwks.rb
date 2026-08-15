# frozen_string_literal: true

module OpenapiClient
  module Api
    class JwtAuth::Jwks
      def initialize(connection)
        @connection = connection
      end

      def get(key:)
        raise ArgumentError, 'key is required' if key.nil?

        @connection.call(
          :GET,
          '/jwt-auth/jwks/{key}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
