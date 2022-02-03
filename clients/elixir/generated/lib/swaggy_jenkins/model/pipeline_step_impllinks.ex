# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SwaggyJenkins.Model.PipelineStepImpllinks do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"self",
    :"actions",
    :"_class"
  ]

  @type t :: %__MODULE__{
    :"self" => SwaggyJenkins.Model.Link.t | nil,
    :"actions" => SwaggyJenkins.Model.Link.t | nil,
    :"_class" => String.t | nil
  }
end

defimpl Poison.Decoder, for: SwaggyJenkins.Model.PipelineStepImpllinks do
  import SwaggyJenkins.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"self", :struct, SwaggyJenkins.Model.Link, options)
    |> deserialize(:"actions", :struct, SwaggyJenkins.Model.Link, options)
  end
end

