# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SwaggyJenkins.Model.Link do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_class",
    :"href"
  ]

  @type t :: %__MODULE__{
    :"_class" => String.t | nil,
    :"href" => String.t | nil
  }
end

defimpl Poison.Decoder, for: SwaggyJenkins.Model.Link do
  def decode(value, _options) do
    value
  end
end

