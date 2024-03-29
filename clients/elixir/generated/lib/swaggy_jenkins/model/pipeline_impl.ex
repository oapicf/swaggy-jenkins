# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.PipelineImpl do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :displayName,
    :estimatedDurationInMillis,
    :fullName,
    :latestRun,
    :name,
    :organization,
    :weatherScore,
    :_links
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :displayName => String.t | nil,
    :estimatedDurationInMillis => integer() | nil,
    :fullName => String.t | nil,
    :latestRun => String.t | nil,
    :name => String.t | nil,
    :organization => String.t | nil,
    :weatherScore => integer() | nil,
    :_links => SwaggyJenkins.Model.PipelineImpllinks.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:_links, :struct, SwaggyJenkins.Model.PipelineImpllinks)
  end
end

