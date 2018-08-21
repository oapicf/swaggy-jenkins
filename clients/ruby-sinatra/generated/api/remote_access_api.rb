require 'json'


MyApp.add_route('GET', '//computer/api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_computer", 
  "responseClass" => "ComputerSet",
  "endpoint" => "/computer/api/json", 
  "notes" => "Retrieve computer details",
  "parameters" => [
    {
      "name" => "depth",
      "description" => "Recursion depth in response model",
      "dataType" => "Integer",
      "allowableValues" => "",
      "paramType" => "query",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//crumbIssuer/api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_crumb", 
  "responseClass" => "DefaultCrumbIssuer",
  "endpoint" => "/crumbIssuer/api/json", 
  "notes" => "Retrieve CSRF protection token",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_jenkins", 
  "responseClass" => "Hudson",
  "endpoint" => "/api/json", 
  "notes" => "Retrieve Jenkins details",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//job/{name}/api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_job", 
  "responseClass" => "FreeStyleProject",
  "endpoint" => "/job/{name}/api/json", 
  "notes" => "Retrieve job details",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//job/{name}/config.xml', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_job_config", 
  "responseClass" => "String",
  "endpoint" => "/job/{name}/config.xml", 
  "notes" => "Retrieve job configuration",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//job/{name}/lastBuild/api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_job_last_build", 
  "responseClass" => "FreeStyleBuild",
  "endpoint" => "/job/{name}/lastBuild/api/json", 
  "notes" => "Retrieve job's last build details",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//job/{name}/{number}/logText/progressiveText', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_job_progressive_text", 
  "responseClass" => "void",
  "endpoint" => "/job/{name}/{number}/logText/progressiveText", 
  "notes" => "Retrieve job's build progressive text output",
  "parameters" => [
    {
      "name" => "start",
      "description" => "Starting point of progressive text output",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "number",
      "description" => "Build number",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//queue/api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_queue", 
  "responseClass" => "Queue",
  "endpoint" => "/queue/api/json", 
  "notes" => "Retrieve queue details",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//queue/item/{number}/api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_queue_item", 
  "responseClass" => "Queue",
  "endpoint" => "/queue/item/{number}/api/json", 
  "notes" => "Retrieve queued item details",
  "parameters" => [
    {
      "name" => "number",
      "description" => "Queue number",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//view/{name}/api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_view", 
  "responseClass" => "ListView",
  "endpoint" => "/view/{name}/api/json", 
  "notes" => "Retrieve view details",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the view",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//view/{name}/config.xml', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "get_view_config", 
  "responseClass" => "String",
  "endpoint" => "/view/{name}/config.xml", 
  "notes" => "Retrieve view configuration",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the view",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('HEAD', '//api/json', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "head_jenkins", 
  "responseClass" => "void",
  "endpoint" => "/api/json", 
  "notes" => "Retrieve Jenkins headers",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//createItem', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_create_item", 
  "responseClass" => "void",
  "endpoint" => "/createItem", 
  "notes" => "Create a new job using job configuration, or copied from an existing job",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the new job",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "from",
      "description" => "Existing job to copy from",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "mode",
      "description" => "Set to &#39;copy&#39; for copying an existing job",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    {
      "name" => "content_type",
      "description" => "Content type header application/xml",
      "dataType" => "String",
      "paramType" => "header",
    },
    {
      "name" => "body",
      "description" => "Job configuration in config.xml format",
      "dataType" => "String",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//createView', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_create_view", 
  "responseClass" => "void",
  "endpoint" => "/createView", 
  "notes" => "Create a new view using view configuration",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the new view",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    {
      "name" => "content_type",
      "description" => "Content type header application/xml",
      "dataType" => "String",
      "paramType" => "header",
    },
    {
      "name" => "body",
      "description" => "View configuration in config.xml format",
      "dataType" => "String",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//job/{name}/build', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_job_build", 
  "responseClass" => "void",
  "endpoint" => "/job/{name}/build", 
  "notes" => "Build a job",
  "parameters" => [
    {
      "name" => "json",
      "description" => "",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "token",
      "description" => "",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//job/{name}/config.xml', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_job_config", 
  "responseClass" => "void",
  "endpoint" => "/job/{name}/config.xml", 
  "notes" => "Update job configuration",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    {
      "name" => "body",
      "description" => "Job configuration in config.xml format",
      "dataType" => "String",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//job/{name}/doDelete', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_job_delete", 
  "responseClass" => "void",
  "endpoint" => "/job/{name}/doDelete", 
  "notes" => "Delete a job",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//job/{name}/disable', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_job_disable", 
  "responseClass" => "void",
  "endpoint" => "/job/{name}/disable", 
  "notes" => "Disable a job",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//job/{name}/enable', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_job_enable", 
  "responseClass" => "void",
  "endpoint" => "/job/{name}/enable", 
  "notes" => "Enable a job",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//job/{name}/lastBuild/stop', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_job_last_build_stop", 
  "responseClass" => "void",
  "endpoint" => "/job/{name}/lastBuild/stop", 
  "notes" => "Stop a job",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the job",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '//view/{name}/config.xml', {
  "resourcePath" => "/RemoteAccess",
  "summary" => "",
  "nickname" => "post_view_config", 
  "responseClass" => "void",
  "endpoint" => "/view/{name}/config.xml", 
  "notes" => "Update view configuration",
  "parameters" => [
    {
      "name" => "name",
      "description" => "Name of the view",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "jenkins_crumb",
      "description" => "CSRF protection token",
      "dataType" => "String",
      "paramType" => "header",
    },
    {
      "name" => "body",
      "description" => "View configuration in config.xml format",
      "dataType" => "String",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end

