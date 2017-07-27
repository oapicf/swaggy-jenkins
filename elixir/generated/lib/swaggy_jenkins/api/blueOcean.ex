defmodule SwaggyJenkins.Api.BlueOcean do
  @moduledoc """
  Documentation for SwaggyJenkins.Api.BlueOcean.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://localhost"
  plug Tesla.Middleware.JSON

  @doc """
  

  Retrieve authenticated user details for an organisation
  """
  def get_authenticated_user(organisation) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organisation}/user/"]
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
  

  Retrieve organisation details
  """
  def get_organisation(organisation) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organisation}"]
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
  

  Retrieve all organisations details
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
  

  Retrieve branch details for an organisation pipeline
  """
  def get_pipeline_branch_by_org(organisation, pipeline, branch) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/#{branch}/"]
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
  

  Retrieve all branches details for an organisation pipeline
  """
  def get_pipeline_branches_by_org(organisation, pipeline) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organisation}/pipelines/#{pipeline}/branches"]
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
  

  Retrieve pipeline details for an organisation
  """
  def get_pipeline_by_org(organisation, pipeline) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organisation}/pipelines/#{pipeline}"]
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
  

  Retrieve pipeline folder for an organisation
  """
  def get_pipeline_folder_by_org(organisation, folder) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organisation}/pipelines/#{folder}/"]
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
  

  Retrieve pipeline details for an organisation folder
  """
  def get_pipeline_folder_by_org_0(organisation, pipeline, folder) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/#{pipeline}"]
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
  

  Retrieve all pipelines details for an organisation
  """
  def get_pipelines_by_org(organisation) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organisation}/pipelines/"]
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
  

  Retrieve user details for an organisation
  """
  def get_user(organisation, user) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/{organisation}/users/#{user}"]
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
  

  Retrieve users details for an organisation
  """
  def get_users(organisation) do
    method = [method: :get]
    url = [url: "/blue/rest/organizations/#{organisation}/users/"]
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
  

  Get classes details
  """
  def search(q) do
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

  @doc """
  

  Search for any resource details
  """
  def search_0(q) do
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
end
