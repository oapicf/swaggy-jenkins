# frozen_string_literal: true

module OpenapiClient
  module Api
    class CrumbIssuer
      def initialize(connection)
        @connection = connection
      end

      def api_json
        @connection.call(
          :GET,
          '/crumbIssuer/api/json',
          type: OpenapiClient::Models::DefaultCrumbIssuer,
          auth: ['jenkins_auth']
        )
      end
    end
  end
end
