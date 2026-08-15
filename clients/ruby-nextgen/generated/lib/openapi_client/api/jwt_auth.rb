# frozen_string_literal: true

module OpenapiClient
  module Api
    class JwtAuth
      def initialize(connection)
        @connection = connection
      end

      def token(expiry_time_in_mins: nil, max_expiry_time_in_mins: nil)
        @connection.call(
          :GET,
          '/jwt-auth/token',
          type: nil,
          auth: [],
          query: { 'expiryTimeInMins' => expiry_time_in_mins, 'maxExpiryTimeInMins' => max_expiry_time_in_mins }
        )
      end
    end
  end
end
