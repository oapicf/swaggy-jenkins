# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SwaggyJenkins.Model.GithubRepositories do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_class",
    :"_links",
    :"items",
    :"lastPage",
    :"nextPage",
    :"pageSize"
  ]

  @type t :: %__MODULE__{
    :"_class" => String.t | nil,
    :"_links" => SwaggyJenkins.Model.GithubRepositorieslinks.t | nil,
    :"items" => [SwaggyJenkins.Model.GithubRepository.t] | nil,
    :"lastPage" => integer() | nil,
    :"nextPage" => integer() | nil,
    :"pageSize" => integer() | nil
  }
end

defimpl Poison.Decoder, for: SwaggyJenkins.Model.GithubRepositories do
  import SwaggyJenkins.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"_links", :struct, SwaggyJenkins.Model.GithubRepositorieslinks, options)
    |> deserialize(:"items", :list, SwaggyJenkins.Model.GithubRepository, options)
  end
end

