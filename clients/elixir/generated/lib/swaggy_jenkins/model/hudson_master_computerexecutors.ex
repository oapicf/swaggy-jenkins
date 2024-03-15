# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.HudsonMasterComputerexecutors do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :currentExecutable,
    :idle,
    :likelyStuck,
    :number,
    :progress,
    :_class
  ]

  @type t :: %__MODULE__{
    :currentExecutable => SwaggyJenkins.Model.FreeStyleBuild.t | nil,
    :idle => boolean() | nil,
    :likelyStuck => boolean() | nil,
    :number => integer() | nil,
    :progress => integer() | nil,
    :_class => String.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:currentExecutable, :struct, SwaggyJenkins.Model.FreeStyleBuild)
  end
end

