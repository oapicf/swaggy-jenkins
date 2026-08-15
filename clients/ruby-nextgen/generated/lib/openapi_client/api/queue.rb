# frozen_string_literal: true

module OpenapiClient
  module Api
    class Queue
      def initialize(connection)
        @connection = connection
      end

      def api_json
        @connection.call(
          :GET,
          '/queue/api/json',
          type: OpenapiClient::Models::Queue,
          auth: ['jenkins_auth']
        )
      end
    end
  end
end
