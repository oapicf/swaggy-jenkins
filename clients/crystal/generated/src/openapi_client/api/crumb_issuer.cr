require "json"

module OpenAPIClient
  module Api
  class CrumbIssuer
    def initialize(@conn : Connection); end

    #  Retrieve CSRF protection token
    def api_json() : Response(OpenAPIClient::DefaultCrumbIssuer)
      @conn.request(OpenAPIClient::DefaultCrumbIssuer,
        method: :GET,
        path: "/crumbIssuer/api/json",
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end
  end
  end

end
