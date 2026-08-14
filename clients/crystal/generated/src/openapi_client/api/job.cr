require "json"

module OpenAPIClient
  module Api
  class Job
    def initialize(@conn : Connection); end

    #  Retrieve job details
    def api_json(name : String) : Response(OpenAPIClient::FreeStyleProject)
      @conn.request(OpenAPIClient::FreeStyleProject,
        method: :GET,
        path: "/job/{name}/api/json".sub("{name}", OpenAPIClient.enc(name)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Build a job
    def build(name : String, *, jenkins_crumb : String? = nil, json : String? = nil, token : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/job/{name}/build".sub("{name}", OpenAPIClient.enc(name)),
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s },
        query: { "json" => json, "token" => token },
        accept: %w[],
        auth: %w[jenkins_auth])
    end

    #  Retrieve job configuration
    def config_xml(name : String) : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/job/{name}/config.xml".sub("{name}", OpenAPIClient.enc(name)),
        accept: %w[text/xml],
        raw: true,
        auth: %w[jenkins_auth])
    end

    #  Update job configuration
    def config_xml_post(name : String, body : String, *, jenkins_crumb : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/job/{name}/config.xml".sub("{name}", OpenAPIClient.enc(name)),
        body: body,
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s },
        accept: %w[*/*],
        content_type: %w[application/json],
        raw: true,
        auth: %w[jenkins_auth])
    end

    #  Disable a job
    def disable(name : String, *, jenkins_crumb : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/job/{name}/disable".sub("{name}", OpenAPIClient.enc(name)),
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s },
        accept: %w[],
        auth: %w[jenkins_auth])
    end

    #  Delete a job
    def do_delete(name : String, *, jenkins_crumb : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/job/{name}/doDelete".sub("{name}", OpenAPIClient.enc(name)),
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s },
        accept: %w[],
        auth: %w[jenkins_auth])
    end

    #  Enable a job
    def enable(name : String, *, jenkins_crumb : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/job/{name}/enable".sub("{name}", OpenAPIClient.enc(name)),
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s },
        accept: %w[],
        auth: %w[jenkins_auth])
    end

    #  Retrieve job&#39;s last build details
    def last_build_api_json(name : String) : Response(OpenAPIClient::FreeStyleBuild)
      @conn.request(OpenAPIClient::FreeStyleBuild,
        method: :GET,
        path: "/job/{name}/lastBuild/api/json".sub("{name}", OpenAPIClient.enc(name)),
        accept: %w[application/json],
        auth: %w[jenkins_auth])
    end

    #  Stop a job
    def last_build_stop(name : String, *, jenkins_crumb : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/job/{name}/lastBuild/stop".sub("{name}", OpenAPIClient.enc(name)),
        header: { "Jenkins-Crumb" => jenkins_crumb.try &.to_s },
        accept: %w[],
        auth: %w[jenkins_auth])
    end

    #  Retrieve job&#39;s build progressive text output
    def log_text_progressive_text(name : String, number : String, *, start : String? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :GET,
        path: "/job/{name}/{number}/logText/progressiveText".sub("{name}", OpenAPIClient.enc(name)).sub("{number}", OpenAPIClient.enc(number)),
        query: { "start" => start },
        accept: %w[],
        auth: %w[jenkins_auth])
    end
  end
  end

end
