# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.ExtensionClassContainerImpl1links do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :self,
    :_class
  ]

  @type t :: %__MODULE__{
    :self => SwaggyJenkins.Model.Link.t | nil,
    :_class => String.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:self, :struct, SwaggyJenkins.Model.Link)
  end
end

