require 'json'


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/user/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_authenticated_user", 
  "responseClass" => "swaggyjenkinsUser", 
  "endpoint" => "/blue/rest/organizations/{organisation}/user/", 
  "notes" => "Retrieve authenticated user details for an organisation",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/classes/{class}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_classes", 
  "responseClass" => "string", 
  "endpoint" => "/blue/rest/classes/{class}", 
  "notes" => "Get a list of class names supported by a given class",
  "parameters" => [
    {
      "name" => "_class",
      "description" => "Name of the class",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_organisation", 
  "responseClass" => "swaggyjenkinsOrganisation", 
  "endpoint" => "/blue/rest/organizations/{organisation}", 
  "notes" => "Retrieve organisation details",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_organisations", 
  "responseClass" => "getOrganisations", 
  "endpoint" => "/blue/rest/organizations/", 
  "notes" => "Retrieve all organisations details",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_branch_by_org", 
  "responseClass" => "iojenkinsblueoceanrestimplpipelineBranchImpl", 
  "endpoint" => "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/", 
  "notes" => "Retrieve branch details for an organisation pipeline",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "branch",
      "description" => "Name of the branch",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_branches_by_org", 
  "responseClass" => "getMultibranchPipeline", 
  "endpoint" => "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches", 
  "notes" => "Retrieve all branches details for an organisation pipeline",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/pipelines/{pipeline}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_by_org", 
  "responseClass" => "swaggyjenkinsPipeline", 
  "endpoint" => "/blue/rest/organizations/{organisation}/pipelines/{pipeline}", 
  "notes" => "Retrieve pipeline details for an organisation",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/pipelines/{folder}/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_folder_by_org", 
  "responseClass" => "iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl", 
  "endpoint" => "/blue/rest/organizations/{organisation}/pipelines/{folder}/", 
  "notes" => "Retrieve pipeline folder for an organisation",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "folder",
      "description" => "Name of the folder",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_folder_by_org_1", 
  "responseClass" => "iojenkinsblueoceanserviceembeddedrestPipelineImpl", 
  "endpoint" => "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}", 
  "notes" => "Retrieve pipeline details for an organisation folder",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "folder",
      "description" => "Name of the folder",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/pipelines/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipelines_by_org", 
  "responseClass" => "getPipelines", 
  "endpoint" => "/blue/rest/organizations/{organisation}/pipelines/", 
  "notes" => "Retrieve all pipelines details for an organisation",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/users/{user}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_user", 
  "responseClass" => "swaggyjenkinsUser", 
  "endpoint" => "/blue/rest/organizations/{organisation}/users/{user}", 
  "notes" => "Retrieve user details for an organisation",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    {
      "name" => "user",
      "description" => "Name of the user",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/organizations/{organisation}/users/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_users", 
  "responseClass" => "swaggyjenkinsUser", 
  "endpoint" => "/blue/rest/organizations/{organisation}/users/", 
  "notes" => "Retrieve users details for an organisation",
  "parameters" => [
    {
      "name" => "organisation",
      "description" => "Name of the organisation",
      "dataType" => "string",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/classes/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "search", 
  "responseClass" => "string", 
  "endpoint" => "/blue/rest/classes/", 
  "notes" => "Get classes details",
  "parameters" => [
    {
      "name" => "q",
      "description" => "Query string containing an array of class names",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '//blue/rest/search/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "search_2", 
  "responseClass" => "string", 
  "endpoint" => "/blue/rest/search/", 
  "notes" => "Search for any resource details",
  "parameters" => [
    {
      "name" => "q",
      "description" => "Query string",
      "dataType" => "string",
      "paramType" => "query",
      
      "allowableValues" => "",
      
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end

