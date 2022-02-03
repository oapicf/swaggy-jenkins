# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SwaggyJenkins.Model.GenericResource do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_class",
    :"displayName",
    :"durationInMillis",
    :"id",
    :"result",
    :"startTime"
  ]

  @type t :: %__MODULE__{
    :"_class" => String.t | nil,
    :"displayName" => String.t | nil,
    :"durationInMillis" => integer() | nil,
    :"id" => String.t | nil,
    :"result" => String.t | nil,
    :"startTime" => String.t | nil
  }
end

defimpl Poison.Decoder, for: SwaggyJenkins.Model.GenericResource do
  def decode(value, _options) do
    value
  end
end

