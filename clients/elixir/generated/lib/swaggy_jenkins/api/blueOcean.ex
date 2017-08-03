defmodule SwaggyJenkins.Api.BlueOcean do
  @moduledoc """
  Documentation for SwaggyJenkins.Api.BlueOcean.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://localhost"
  plug Tesla.Middleware.JSON

  @doc """
  

  Delete queue item from an organization pipeline queue
  """
  def delete_pipeline_queue_item(organization, pipeline, queue) do
    method = [method: :delete]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/#{queue}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve authenticated user details for an organization
  """
  def get_authenticated_user(organization) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organization}/user/"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Get a list of class names supported by a given class
  """
  def get_classes(class) do
    method = [method: :get]
    url = [url: "/blue/rest/classes/#{class}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve organization details
  """
  def get_organisation(organization) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organization}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve all organizations details
  """
  def get_organisations() do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve pipeline details for an organization
  """
  def get_pipeline(organization, pipeline) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{pipeline}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve all activities details for an organization pipeline
  """
  def get_pipeline_activities(organization, pipeline) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{pipeline}/activities"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve branch details for an organization pipeline
  """
  def get_pipeline_branch(organization, pipeline, branch) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/#{branch}/"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve branch run details for an organization pipeline
  """
  def get_pipeline_branch_run(organization, pipeline, branch, run) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/#{run}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve all branches details for an organization pipeline
  """
  def get_pipeline_branches(organization, pipeline) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{pipeline}/branches"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve pipeline folder for an organization
  """
  def get_pipeline_folder(organization, folder) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{folder}/"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve pipeline details for an organization folder
  """
  def get_pipeline_folder_pipeline(organization, pipeline, folder) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/#{pipeline}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve queue details for an organization pipeline
  """
  def get_pipeline_queue(organization, pipeline) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{pipeline}/queue"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve run details for an organization pipeline
  """
  def get_pipeline_run(organization, pipeline, run) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/#{run}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Get log for a pipeline run
  """
  def get_pipeline_run_log(organization, pipeline, run, start, download) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/#{run}/log"]
    query_params = [query: [{:"start", start}, {:"download", download}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve run node details for an organization pipeline
  """
  def get_pipeline_run_node(organization, pipeline, run, node) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/#{node}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve run node details for an organization pipeline
  """
  def get_pipeline_run_node_step(organization, pipeline, run, node, step) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/#{step}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Get log for a pipeline run node step
  """
  def get_pipeline_run_node_step_log(organization, pipeline, run, node, step) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/#{step}/log"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve run node steps details for an organization pipeline
  """
  def get_pipeline_run_node_steps(organization, pipeline, run, node) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/#{node}/steps"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve run nodes details for an organization pipeline
  """
  def get_pipeline_run_nodes(organization, pipeline, run) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/#{run}/nodes"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve all runs details for an organization pipeline
  """
  def get_pipeline_runs(organization, pipeline) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{pipeline}/runs"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve all pipelines details for an organization
  """
  def get_pipelines(organization) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organization}/pipelines/"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve SCM details for an organization
  """
  def get_scm(organization, scm) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/scm/#{scm}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve SCM organization repositories details for an organization
  """
  def get_scm_organisation_repositories(organization, scm, scm_organisation, credential_id, page_size, page_number) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/scm/{scm}/organizations/#{scm_organisation}/repositories"]
    query_params = [query: [{:"credentialId", credential_id}, {:"pageSize", page_size}, {:"pageNumber", page_number}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve SCM organization repository details for an organization
  """
  def get_scm_organisation_repository(organization, scm, scm_organisation, repository, credential_id) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/#{repository}"]
    query_params = [query: [{:"credentialId", credential_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve SCM organizations details for an organization
  """
  def get_scm_organisations(organization, scm, credential_id) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/scm/#{scm}/organizations"]
    query_params = [query: [{:"credentialId", credential_id}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve user details for an organization
  """
  def get_user(organization, user) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organization}/users/#{user}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve user favorites details for an organization
  """
  def get_user_favorites(user) do
    method = [method: :get]
    url = [url: "/blue/rest/users/#{user}/favorites"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve users details for an organization
  """
  def get_users(organization) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organization}/users/"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Replay an organization pipeline run
  """
  def post_pipeline_run(organization, pipeline, run) do
    method = [method: :post]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/#{run}/replay"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Start a build for an organization pipeline
  """
  def post_pipeline_runs(organization, pipeline) do
    method = [method: :post]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{pipeline}/runs"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Favorite/unfavorite a pipeline
  """
  def put_pipeline_favorite(organization, pipeline, body) do
    method = [method: :put]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/#{pipeline}/favorite"]
    query_params = []
    header_params = []
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Stop a build of an organization pipeline
  """
  def put_pipeline_run(organization, pipeline, run, blocking, time_out_in_secs) do
    method = [method: :put]
    url = [url: "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/#{run}/stop"]
    query_params = [query: [{:"blocking", blocking}, {:"timeOutInSecs", time_out_in_secs}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Search for any resource details
  """
  def search(q) do
    method = [method: :get]
    url = [url: "/blue/rest/search/"]
    query_params = [query: [{:"q", q}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Get classes details
  """
  def search_classes(q) do
    method = [method: :get]
    url = [url: "/blue/rest/classes/"]
    query_params = [query: [{:"q", q}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
