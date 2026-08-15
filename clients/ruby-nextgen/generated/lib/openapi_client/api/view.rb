# frozen_string_literal: true

module OpenapiClient
  module Api
    class View
      def initialize(connection)
        @connection = connection
      end

      def api_json(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/view/{name}/api/json'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: OpenapiClient::Models::ListView,
          auth: ['jenkins_auth']
        )
      end

      def config/xml(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/view/{name}/config.xml'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth']
        )
      end

      def config/xml_post(name:, body:, jenkins_crumb: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/view/{name}/config.xml'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          headers: { 'Jenkins-Crumb' => jenkins_crumb },
          body: body
        )
      end
    end
  end
end
