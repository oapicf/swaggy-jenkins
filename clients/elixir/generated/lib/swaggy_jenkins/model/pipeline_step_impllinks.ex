# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.PipelineStepImpllinks do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :self,
    :actions,
    :_class
  ]

  @type t :: %__MODULE__{
    :self => SwaggyJenkins.Model.Link.t | nil,
    :actions => SwaggyJenkins.Model.Link.t | nil,
    :_class => String.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:self, :struct, SwaggyJenkins.Model.Link)
     |> Deserializer.deserialize(:actions, :struct, SwaggyJenkins.Model.Link)
  end
end

