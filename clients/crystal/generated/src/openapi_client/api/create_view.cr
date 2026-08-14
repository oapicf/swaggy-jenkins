require "json"

module OpenAPIClient
  module Api
  class CreateView
    def initialize(@conn : Connection); end

    #  Create a new view using view configuration
    def create(body : String? = nil, *, jenkins_crumb : String? = nil, content_type : String? = nil, name : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/createView",
        body: body,
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s, "Content-Type" => content_type.try &.to_s },
        query: { "name" => name },
        accept: %w[*/*],
        content_type: %w[application/json],
        raw: true,
        auth: %w[jenkins_auth])
    end
  end
  end

end
