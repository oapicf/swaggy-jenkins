# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SwaggyJenkins.Model.StringParameterDefinition do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_class",
    :"defaultParameterValue",
    :"description",
    :"name",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"_class" => String.t | nil,
    :"defaultParameterValue" => SwaggyJenkins.Model.StringParameterValue.t | nil,
    :"description" => String.t | nil,
    :"name" => String.t | nil,
    :"type" => String.t | nil
  }
end

defimpl Poison.Decoder, for: SwaggyJenkins.Model.StringParameterDefinition do
  import SwaggyJenkins.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"defaultParameterValue", :struct, SwaggyJenkins.Model.StringParameterValue, options)
  end
end

