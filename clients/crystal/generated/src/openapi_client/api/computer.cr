require "json"

module OpenAPIClient
  module Api
  class Computer
    def initialize(@conn : Connection); end

    #  Retrieve computer details
    def api_json(*, depth : Int32? = nil) : Response(OpenAPIClient::ComputerSet)
      @conn.request(OpenAPIClient::ComputerSet,
        method: :GET,
        path: "/computer/api/json",
        query: { "depth" => depth },
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end
  end
  end

end
