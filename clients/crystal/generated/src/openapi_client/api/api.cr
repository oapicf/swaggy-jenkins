require "json"

module OpenAPIClient
  module Api
  class Api
    def initialize(@conn : Connection); end

    #  Retrieve Jenkins details
    def json() : Response(OpenAPIClient::Hudson)
      @conn.request(OpenAPIClient::Hudson,
        method: :GET,
        path: "/api/json",
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve Jenkins headers
    def json_head() : Response(Nil)
      @conn.request(Nil,
        method: :HEAD,
        path: "/api/json",
        accept: %w[],
        auth: %w[jenkins_auth])
    end
  end
  end

end
