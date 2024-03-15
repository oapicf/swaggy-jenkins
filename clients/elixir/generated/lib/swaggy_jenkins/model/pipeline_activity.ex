# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.PipelineActivity do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :artifacts,
    :durationInMillis,
    :estimatedDurationInMillis,
    :enQueueTime,
    :endTime,
    :id,
    :organization,
    :pipeline,
    :result,
    :runSummary,
    :startTime,
    :state,
    :type,
    :commitId
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :artifacts => [SwaggyJenkins.Model.PipelineActivityartifacts.t] | nil,
    :durationInMillis => integer() | nil,
    :estimatedDurationInMillis => integer() | nil,
    :enQueueTime => String.t | nil,
    :endTime => String.t | nil,
    :id => String.t | nil,
    :organization => String.t | nil,
    :pipeline => String.t | nil,
    :result => String.t | nil,
    :runSummary => String.t | nil,
    :startTime => String.t | nil,
    :state => String.t | nil,
    :type => String.t | nil,
    :commitId => String.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:artifacts, :list, SwaggyJenkins.Model.PipelineActivityartifacts)
  end
end

