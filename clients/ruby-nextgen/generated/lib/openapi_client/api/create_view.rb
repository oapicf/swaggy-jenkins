# frozen_string_literal: true

module OpenapiClient
  module Api
    class CreateView
      def initialize(connection)
        @connection = connection
      end

      def create(name:, jenkins_crumb: nil, content_type: nil, body: nil)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :POST,
          '/createView',
          type: nil,
          auth: ['jenkins_auth'],
          query: { 'name' => name },
          headers: { 'Jenkins-Crumb' => jenkins_crumb, 'Content-Type' => content_type },
          body: body
        )
      end
    end
  end
end
