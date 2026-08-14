require "json"

module OpenAPIClient
  module Api
  class Queue::Item
    def initialize(@conn : Connection); end

    #  Retrieve queued item details
    def api_json(number : String) : Response(OpenAPIClient::Queue)
      @conn.request(OpenAPIClient::Queue,
        method: :GET,
        path: "/queue/item/{number}/api/json".sub("{number}", OpenAPIClient.enc(number)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end
  end
  end

end
