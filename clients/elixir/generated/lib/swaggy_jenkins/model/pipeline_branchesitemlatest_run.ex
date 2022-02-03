# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SwaggyJenkins.Model.PipelineBranchesitemlatestRun do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"durationInMillis",
    :"estimatedDurationInMillis",
    :"enQueueTime",
    :"endTime",
    :"id",
    :"organization",
    :"pipeline",
    :"result",
    :"runSummary",
    :"startTime",
    :"state",
    :"type",
    :"commitId",
    :"_class"
  ]

  @type t :: %__MODULE__{
    :"durationInMillis" => integer() | nil,
    :"estimatedDurationInMillis" => integer() | nil,
    :"enQueueTime" => String.t | nil,
    :"endTime" => String.t | nil,
    :"id" => String.t | nil,
    :"organization" => String.t | nil,
    :"pipeline" => String.t | nil,
    :"result" => String.t | nil,
    :"runSummary" => String.t | nil,
    :"startTime" => String.t | nil,
    :"state" => String.t | nil,
    :"type" => String.t | nil,
    :"commitId" => String.t | nil,
    :"_class" => String.t | nil
  }
end

defimpl Poison.Decoder, for: SwaggyJenkins.Model.PipelineBranchesitemlatestRun do
  def decode(value, _options) do
    value
  end
end

