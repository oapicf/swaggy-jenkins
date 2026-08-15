# frozen_string_literal: true

module OpenapiClient
  module Api
    class Computer
      def initialize(connection)
        @connection = connection
      end

      def api_json(depth:)
        raise ArgumentError, 'depth is required' if depth.nil?

        @connection.call(
          :GET,
          '/computer/api/json',
          type: OpenapiClient::Models::ComputerSet,
          auth: ['jenkins_auth'],
          query: { 'depth' => depth }
        )
      end
    end
  end
end
