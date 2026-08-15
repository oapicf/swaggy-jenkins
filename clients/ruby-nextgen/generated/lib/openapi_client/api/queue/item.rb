# frozen_string_literal: true

module OpenapiClient
  module Api
    class Queue::Item
      def initialize(connection)
        @connection = connection
      end

      def api_json(number:)
        raise ArgumentError, 'number is required' if number.nil?

        @connection.call(
          :GET,
          '/queue/item/{number}/api/json'
            .gsub('{number}', ERB::Util.url_encode(number.to_s)),
          type: OpenapiClient::Models::Queue,
          auth: ['jenkins_auth']
        )
      end
    end
  end
end
