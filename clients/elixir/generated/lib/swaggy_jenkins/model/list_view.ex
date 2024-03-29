# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.ListView do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :description,
    :jobs,
    :name,
    :url
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :description => String.t | nil,
    :jobs => [SwaggyJenkins.Model.FreeStyleProject.t] | nil,
    :name => String.t | nil,
    :url => String.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:jobs, :list, SwaggyJenkins.Model.FreeStyleProject)
  end
end

