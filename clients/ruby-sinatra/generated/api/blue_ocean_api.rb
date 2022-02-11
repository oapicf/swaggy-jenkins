require 'json'


MyApp.add_route('DELETE', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "delete_pipeline_queue_item",
  "responseClass" => "void",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}",
  "notes" => "Delete queue item from an organization pipeline queue",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "queue",
      "description" => "Name of the queue item",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/user/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_authenticated_user",
  "responseClass" => "User",
  "endpoint" => "/blue/rest/organizations/{organization}/user/",
  "notes" => "Retrieve authenticated user details for an organization",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/classes/{class}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_classes",
  "responseClass" => "String",
  "endpoint" => "/blue/rest/classes/{class}",
  "notes" => "Get a list of class names supported by a given class",
  "parameters" => [
    {
      "name" => "_class",
      "description" => "Name of the class",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/jwt-auth/jwks/{key}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_json_web_key",
  "responseClass" => "String",
  "endpoint" => "/jwt-auth/jwks/{key}",
  "notes" => "Retrieve JSON Web Key",
  "parameters" => [
    {
      "name" => "key",
      "description" => "Key ID received as part of JWT header field kid",
      "dataType" => "Integer",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/jwt-auth/token', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_json_web_token",
  "responseClass" => "String",
  "endpoint" => "/jwt-auth/token",
  "notes" => "Retrieve JSON Web Token",
  "parameters" => [
    {
      "name" => "expiry_time_in_mins",
      "description" => "Token expiry time in minutes, default: 30 minutes",
      "dataType" => "Integer",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "max_expiry_time_in_mins",
      "description" => "Maximum token expiry time in minutes, default: 480 minutes",
      "dataType" => "Integer",
      "allowableValues" => "",
      "paramType" => "query",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_organisation",
  "responseClass" => "Organisation",
  "endpoint" => "/blue/rest/organizations/{organization}",
  "notes" => "Retrieve organization details",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_organisations",
  "responseClass" => "Array<Organisation>",
  "endpoint" => "/blue/rest/organizations/",
  "notes" => "Retrieve all organizations details",
  "parameters" => [
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline",
  "responseClass" => "Pipeline",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}",
  "notes" => "Retrieve pipeline details for an organization",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_activities",
  "responseClass" => "Array<PipelineActivity>",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities",
  "notes" => "Retrieve all activities details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_branch",
  "responseClass" => "BranchImpl",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/",
  "notes" => "Retrieve branch details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "branch",
      "description" => "Name of the branch",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_branch_run",
  "responseClass" => "PipelineRun",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}",
  "notes" => "Retrieve branch run details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "branch",
      "description" => "Name of the branch",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_branches",
  "responseClass" => "MultibranchPipeline",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches",
  "notes" => "Retrieve all branches details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{folder}/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_folder",
  "responseClass" => "PipelineFolderImpl",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{folder}/",
  "notes" => "Retrieve pipeline folder for an organization",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "folder",
      "description" => "Name of the folder",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_folder_pipeline",
  "responseClass" => "PipelineImpl",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}",
  "notes" => "Retrieve pipeline details for an organization folder",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "folder",
      "description" => "Name of the folder",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_queue",
  "responseClass" => "Array<QueueItemImpl>",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue",
  "notes" => "Retrieve queue details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_run",
  "responseClass" => "PipelineRun",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}",
  "notes" => "Retrieve run details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_run_log",
  "responseClass" => "String",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log",
  "notes" => "Get log for a pipeline run",
  "parameters" => [
    {
      "name" => "start",
      "description" => "Start position of the log",
      "dataType" => "Integer",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "download",
      "description" => "Set to true in order to download the file, otherwise it&#39;s passed as a response body",
      "dataType" => "Boolean",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_run_node",
  "responseClass" => "PipelineRunNode",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}",
  "notes" => "Retrieve run node details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "node",
      "description" => "Name of the node",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_run_node_step",
  "responseClass" => "PipelineStepImpl",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}",
  "notes" => "Retrieve run node details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "node",
      "description" => "Name of the node",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "step",
      "description" => "Name of the step",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_run_node_step_log",
  "responseClass" => "String",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log",
  "notes" => "Get log for a pipeline run node step",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "node",
      "description" => "Name of the node",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "step",
      "description" => "Name of the step",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_run_node_steps",
  "responseClass" => "Array<PipelineStepImpl>",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps",
  "notes" => "Retrieve run node steps details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "node",
      "description" => "Name of the node",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_run_nodes",
  "responseClass" => "Array<PipelineRunNode>",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes",
  "notes" => "Retrieve run nodes details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipeline_runs",
  "responseClass" => "Array<PipelineRun>",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
  "notes" => "Retrieve all runs details for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/pipelines/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_pipelines",
  "responseClass" => "Array<Pipeline>",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/",
  "notes" => "Retrieve all pipelines details for an organization",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/scm/{scm}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_scm",
  "responseClass" => "GithubScm",
  "endpoint" => "/blue/rest/organizations/{organization}/scm/{scm}",
  "notes" => "Retrieve SCM details for an organization",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "scm",
      "description" => "Name of SCM",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_scm_organisation_repositories",
  "responseClass" => "Array<GithubOrganization>",
  "endpoint" => "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories",
  "notes" => "Retrieve SCM organization repositories details for an organization",
  "parameters" => [
    {
      "name" => "credential_id",
      "description" => "Credential ID",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "page_size",
      "description" => "Number of items in a page",
      "dataType" => "Integer",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "page_number",
      "description" => "Page number",
      "dataType" => "Integer",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "scm",
      "description" => "Name of SCM",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "scm_organisation",
      "description" => "Name of the SCM organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_scm_organisation_repository",
  "responseClass" => "Array<GithubOrganization>",
  "endpoint" => "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}",
  "notes" => "Retrieve SCM organization repository details for an organization",
  "parameters" => [
    {
      "name" => "credential_id",
      "description" => "Credential ID",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "scm",
      "description" => "Name of SCM",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "scm_organisation",
      "description" => "Name of the SCM organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "repository",
      "description" => "Name of the SCM repository",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/scm/{scm}/organizations', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_scm_organisations",
  "responseClass" => "Array<GithubOrganization>",
  "endpoint" => "/blue/rest/organizations/{organization}/scm/{scm}/organizations",
  "notes" => "Retrieve SCM organizations details for an organization",
  "parameters" => [
    {
      "name" => "credential_id",
      "description" => "Credential ID",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "scm",
      "description" => "Name of SCM",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/users/{user}', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_user",
  "responseClass" => "User",
  "endpoint" => "/blue/rest/organizations/{organization}/users/{user}",
  "notes" => "Retrieve user details for an organization",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "user",
      "description" => "Name of the user",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/users/{user}/favorites', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_user_favorites",
  "responseClass" => "Array<FavoriteImpl>",
  "endpoint" => "/blue/rest/users/{user}/favorites",
  "notes" => "Retrieve user favorites details for an organization",
  "parameters" => [
    {
      "name" => "user",
      "description" => "Name of the user",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/organizations/{organization}/users/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "get_users",
  "responseClass" => "User",
  "endpoint" => "/blue/rest/organizations/{organization}/users/",
  "notes" => "Retrieve users details for an organization",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "post_pipeline_run",
  "responseClass" => "QueueItemImpl",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay",
  "notes" => "Replay an organization pipeline run",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('POST', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "post_pipeline_runs",
  "responseClass" => "QueueItemImpl",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs",
  "notes" => "Start a build for an organization pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('PUT', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "put_pipeline_favorite",
  "responseClass" => "FavoriteImpl",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite",
  "notes" => "Favorite/unfavorite a pipeline",
  "parameters" => [
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "body",
      "description" => "Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite",
      "dataType" => "Boolean",
      "paramType" => "body",
    }
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('PUT', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "put_pipeline_run",
  "responseClass" => "PipelineRun",
  "endpoint" => "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop",
  "notes" => "Stop a build of an organization pipeline",
  "parameters" => [
    {
      "name" => "blocking",
      "description" => "Set to true to make blocking stop, default: false",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "time_out_in_secs",
      "description" => "Timeout in seconds, default: 10 seconds",
      "dataType" => "Integer",
      "allowableValues" => "",
      "paramType" => "query",
    },
    {
      "name" => "organization",
      "description" => "Name of the organization",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "pipeline",
      "description" => "Name of the pipeline",
      "dataType" => "String",
      "paramType" => "path",
    },
    {
      "name" => "run",
      "description" => "Name of the run",
      "dataType" => "String",
      "paramType" => "path",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/search/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "search",
  "responseClass" => "String",
  "endpoint" => "/blue/rest/search/",
  "notes" => "Search for any resource details",
  "parameters" => [
    {
      "name" => "q",
      "description" => "Query string",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end


MyApp.add_route('GET', '/blue/rest/classes/', {
  "resourcePath" => "/BlueOcean",
  "summary" => "",
  "nickname" => "search_classes",
  "responseClass" => "String",
  "endpoint" => "/blue/rest/classes/",
  "notes" => "Get classes details",
  "parameters" => [
    {
      "name" => "q",
      "description" => "Query string containing an array of class names",
      "dataType" => "String",
      "allowableValues" => "",
      "paramType" => "query",
    },
    ]}) do
  cross_origin
  # the guts live here

  {"message" => "yes, it worked"}.to_json
end

