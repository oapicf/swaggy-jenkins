# frozen_string_literal: true

module OpenapiClient
  module Api
    class Api
      def initialize(connection)
        @connection = connection
      end

      def json
        @connection.call(
          :GET,
          '/api/json',
          type: OpenapiClient::Models::Hudson,
          auth: ['jenkins_auth']
        )
      end

      def json_head
        @connection.call(
          :HEAD,
          '/api/json',
          type: nil,
          auth: ['jenkins_auth']
        )
      end
    end
  end
end
