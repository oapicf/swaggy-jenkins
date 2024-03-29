# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.FreeStyleBuild do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :number,
    :url,
    :actions,
    :building,
    :description,
    :displayName,
    :duration,
    :estimatedDuration,
    :executor,
    :fullDisplayName,
    :id,
    :keepLog,
    :queueId,
    :result,
    :timestamp,
    :builtOn,
    :changeSet
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :number => integer() | nil,
    :url => String.t | nil,
    :actions => [SwaggyJenkins.Model.CauseAction.t] | nil,
    :building => boolean() | nil,
    :description => String.t | nil,
    :displayName => String.t | nil,
    :duration => integer() | nil,
    :estimatedDuration => integer() | nil,
    :executor => String.t | nil,
    :fullDisplayName => String.t | nil,
    :id => String.t | nil,
    :keepLog => boolean() | nil,
    :queueId => integer() | nil,
    :result => String.t | nil,
    :timestamp => integer() | nil,
    :builtOn => String.t | nil,
    :changeSet => SwaggyJenkins.Model.EmptyChangeLogSet.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:actions, :list, SwaggyJenkins.Model.CauseAction)
     |> Deserializer.deserialize(:changeSet, :struct, SwaggyJenkins.Model.EmptyChangeLogSet)
  end
end

