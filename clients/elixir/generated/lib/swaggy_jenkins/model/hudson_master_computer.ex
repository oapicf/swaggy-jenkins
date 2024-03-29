# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.HudsonMasterComputer do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :displayName,
    :executors,
    :icon,
    :iconClassName,
    :idle,
    :jnlpAgent,
    :launchSupported,
    :loadStatistics,
    :manualLaunchAllowed,
    :monitorData,
    :numExecutors,
    :offline,
    :offlineCause,
    :offlineCauseReason,
    :temporarilyOffline
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :displayName => String.t | nil,
    :executors => [SwaggyJenkins.Model.HudsonMasterComputerexecutors.t] | nil,
    :icon => String.t | nil,
    :iconClassName => String.t | nil,
    :idle => boolean() | nil,
    :jnlpAgent => boolean() | nil,
    :launchSupported => boolean() | nil,
    :loadStatistics => SwaggyJenkins.Model.Label1.t | nil,
    :manualLaunchAllowed => boolean() | nil,
    :monitorData => SwaggyJenkins.Model.HudsonMasterComputermonitorData.t | nil,
    :numExecutors => integer() | nil,
    :offline => boolean() | nil,
    :offlineCause => String.t | nil,
    :offlineCauseReason => String.t | nil,
    :temporarilyOffline => boolean() | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:executors, :list, SwaggyJenkins.Model.HudsonMasterComputerexecutors)
     |> Deserializer.deserialize(:loadStatistics, :struct, SwaggyJenkins.Model.Label1)
     |> Deserializer.deserialize(:monitorData, :struct, SwaggyJenkins.Model.HudsonMasterComputermonitorData)
  end
end

