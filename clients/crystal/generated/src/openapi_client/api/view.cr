require "json"

module OpenAPIClient
  module Api
  class View
    def initialize(@conn : Connection); end

    #  Retrieve view details
    def api_json(name : String) : Response(OpenAPIClient::ListView)
      @conn.request(OpenAPIClient::ListView,
        method: :GET,
        path: "/view/{name}/api/json".sub("{name}", OpenAPIClient.enc(name)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Retrieve view configuration
    def config_xml(name : String) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/view/{name}/config.xml".sub("{name}", OpenAPIClient.enc(name)),
        accept: %w[text/xml],
        raw: true,
        auth: %w[jenkins_auth])
    end

    #  Update view configuration
    def config_xml_post(name : String, body : String, *, jenkins_crumb : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/view/{name}/config.xml".sub("{name}", OpenAPIClient.enc(name)),
        body: body,
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s },
        accept: %w[*/*],
        content_type: %w[application/json],
        raw: true,
        auth: %w[jenkins_auth])
    end
  end
  end

end
