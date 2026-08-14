require "json"

module OpenAPIClient
  module Api
  class CreateItem
    def initialize(@conn : Connection); end

    #  Create a new job using job configuration, or copied from an existing job
    def create(body : String? = nil, *, jenkins_crumb : String? = nil, content_type : String? = nil, name : String? = nil, from : String? = nil, mode : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/createItem",
        body: body,
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s, "Content-Type" => content_type.try &.to_s },
        query: { "name" => name, "from" => from, "mode" => mode },
        accept: %w[*/*],
        content_type: %w[application/json],
        raw: true,
        auth: %w[jenkins_auth])
    end
  end
  end

end
