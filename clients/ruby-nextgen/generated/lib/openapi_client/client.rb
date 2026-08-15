# frozen_string_literal: true

module OpenapiClient
  class Client
    attr_reader :configuration, :connection

    def initialize(base_url: nil, **options, &block)
      @configuration = Configuration.new(base_url: base_url, **options, &block)
      @connection = Connection.new(@configuration)
    end

    def api
      @api ||= OpenapiClient::Api::Api.new(@connection)
    end

    def blue
      @blue ||= OpenapiClient::Api::Blue.new(@connection)
    end

    def computer
      @computer ||= OpenapiClient::Api::Computer.new(@connection)
    end

    def create_item
      @create_item ||= OpenapiClient::Api::CreateItem.new(@connection)
    end

    def create_view
      @create_view ||= OpenapiClient::Api::CreateView.new(@connection)
    end

    def crumb_issuer
      @crumb_issuer ||= OpenapiClient::Api::CrumbIssuer.new(@connection)
    end

    def job
      @job ||= OpenapiClient::Api::Job.new(@connection)
    end

    def jwt_auth
      @jwt_auth ||= OpenapiClient::Api::JwtAuth.new(@connection)
    end

    def queue
      @queue ||= OpenapiClient::Api::Queue.new(@connection)
    end

    def view
      @view ||= OpenapiClient::Api::View.new(@connection)
    end
  end
end
