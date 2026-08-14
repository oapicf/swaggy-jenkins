require "json"

module OpenAPIClient
  module Api
  class Queue
    def initialize(@conn : Connection); end

    #  Retrieve queue details
    def api_json() : Response(OpenAPIClient::Queue)
      @conn.request(OpenAPIClient::Queue,
        method: :GET,
        path: "/queue/api/json",
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end
  end
  end

end
