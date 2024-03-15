# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Api.Base do
  @moduledoc """
  API calls for all endpoints tagged `Base`.
  """

  alias SwaggyJenkins.Connection
  import SwaggyJenkins.RequestBuilder

  @doc """
  Retrieve CSRF protection token

  ### Parameters

  - `connection` (SwaggyJenkins.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, SwaggyJenkins.Model.DefaultCrumbIssuer.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_crumb(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, SwaggyJenkins.Model.DefaultCrumbIssuer.t} | {:error, Tesla.Env.t}
  def get_crumb(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/crumbIssuer/api/json")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SwaggyJenkins.Model.DefaultCrumbIssuer},
      {401, false},
      {403, false}
    ])
  end
end
