# frozen_string_literal: true

module OpenapiClient
  module Api
    class Job
      def initialize(connection)
        @connection = connection
      end

      def api_json(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/job/{name}/api/json'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: OpenapiClient::Models::FreeStyleProject,
          auth: ['jenkins_auth']
        )
      end

      def build(name:, json:, token: nil, jenkins_crumb: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'json is required' if json.nil?

        @connection.call(
          :POST,
          '/job/{name}/build'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          query: { 'json' => json, 'token' => token },
          headers: { 'Jenkins-Crumb' => jenkins_crumb }
        )
      end

      def config/xml(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/job/{name}/config.xml'
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
          '/job/{name}/config.xml'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          headers: { 'Jenkins-Crumb' => jenkins_crumb },
          body: body
        )
      end

      def disable(name:, jenkins_crumb: nil)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :POST,
          '/job/{name}/disable'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          headers: { 'Jenkins-Crumb' => jenkins_crumb }
        )
      end

      def do_delete(name:, jenkins_crumb: nil)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :POST,
          '/job/{name}/doDelete'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          headers: { 'Jenkins-Crumb' => jenkins_crumb }
        )
      end

      def enable(name:, jenkins_crumb: nil)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :POST,
          '/job/{name}/enable'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          headers: { 'Jenkins-Crumb' => jenkins_crumb }
        )
      end

      def last_build_api_json(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/job/{name}/lastBuild/api/json'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: OpenapiClient::Models::FreeStyleBuild,
          auth: ['jenkins_auth']
        )
      end

      def last_build_stop(name:, jenkins_crumb: nil)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :POST,
          '/job/{name}/lastBuild/stop'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          headers: { 'Jenkins-Crumb' => jenkins_crumb }
        )
      end

      def log_text_progressive_text(name:, number:, start:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'start is required' if start.nil?

        @connection.call(
          :GET,
          '/job/{name}/{number}/logText/progressiveText'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s)),
          type: nil,
          auth: ['jenkins_auth'],
          query: { 'start' => start }
        )
      end
    end
  end
end
