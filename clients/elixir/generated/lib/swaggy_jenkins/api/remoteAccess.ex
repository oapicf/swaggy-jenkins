defmodule SwaggyJenkins.Api.RemoteAccess do
  @moduledoc """
  Documentation for SwaggyJenkins.Api.RemoteAccess.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://localhost"
  plug Tesla.Middleware.JSON

  @doc """
  

  Retrieve computer details
  """
  def get_computer(depth) do
    method = [method: :get]
    url = [url: "/computer/api/json"]
    query_params = [query: [{:"depth", depth}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve CSRF protection token
  """
  def get_crumb() do
    method = [method: :get]
    url = [url: "/crumbIssuer/api/json"]
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
  

  Retrieve Jenkins details
  """
  def get_jenkins() do
    method = [method: :get]
    url = [url: "/api/json"]
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
  

  Retrieve job details
  """
  def get_job(name) do
    method = [method: :get]
    url = [url: "/job/#{name}/api/json"]
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
  

  Retrieve job configuration
  """
  def get_job_config(name) do
    method = [method: :get]
    url = [url: "/job/#{name}/config.xml"]
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
  

  Retrieve job&#39;s last build details
  """
  def get_job_last_build(name) do
    method = [method: :get]
    url = [url: "/job/#{name}/lastBuild/api/json"]
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
  

  Retrieve job&#39;s build progressive text output
  """
  def get_job_progressive_text(name, number, start) do
    method = [method: :get]
    url = [url: "/job/{name}/#{number}/logText/progressiveText"]
    query_params = [query: [{:"start", start}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Retrieve queue details
  """
  def get_queue() do
    method = [method: :get]
    url = [url: "/queue/api/json"]
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
  

  Retrieve queued item details
  """
  def get_queue_item(number) do
    method = [method: :get]
    url = [url: "/queue/item/#{number}/api/json"]
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
  

  Retrieve view details
  """
  def get_view(name) do
    method = [method: :get]
    url = [url: "/view/#{name}/api/json"]
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
  

  Retrieve view configuration
  """
  def get_view_config(name) do
    method = [method: :get]
    url = [url: "/view/#{name}/config.xml"]
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
  

  Retrieve Jenkins headers
  """
  def head_jenkins() do
    method = [method: :head]
    url = [url: "/api/json"]
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
  

  Create a new job using job configuration, or copied from an existing job
  """
  def post_create_item(name, from, mode, body, jenkins_crumb, content_type) do
    method = [method: :post]
    url = [url: "/createItem"]
    query_params = [query: [{:"name", name}, {:"from", from}, {:"mode", mode}]]
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}, {:"Content-Type", content_type}]]
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Create a new view using view configuration
  """
  def post_create_view(name, body, jenkins_crumb, content_type) do
    method = [method: :post]
    url = [url: "/createView"]
    query_params = [query: [{:"name", name}]]
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}, {:"Content-Type", content_type}]]
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Build a job
  """
  def post_job_build(name, json, token, jenkins_crumb) do
    method = [method: :post]
    url = [url: "/job/#{name}/build"]
    query_params = [query: [{:"json", json}, {:"token", token}]]
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}]]
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Update job configuration
  """
  def post_job_config(name, body, jenkins_crumb) do
    method = [method: :post]
    url = [url: "/job/#{name}/config.xml"]
    query_params = []
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}]]
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Delete a job
  """
  def post_job_delete(name, jenkins_crumb) do
    method = [method: :post]
    url = [url: "/job/#{name}/doDelete"]
    query_params = []
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}]]
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Disable a job
  """
  def post_job_disable(name, jenkins_crumb) do
    method = [method: :post]
    url = [url: "/job/#{name}/disable"]
    query_params = []
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}]]
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Enable a job
  """
  def post_job_enable(name, jenkins_crumb) do
    method = [method: :post]
    url = [url: "/job/#{name}/enable"]
    query_params = []
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}]]
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Stop a job
  """
  def post_job_last_build_stop(name, jenkins_crumb) do
    method = [method: :post]
    url = [url: "/job/#{name}/lastBuild/stop"]
    query_params = []
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}]]
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  

  Update view configuration
  """
  def post_view_config(name, body, jenkins_crumb) do
    method = [method: :post]
    url = [url: "/view/#{name}/config.xml"]
    query_params = []
    header_params = [header: [{:"Jenkins-Crumb", jenkins_crumb}]]
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
