# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.ExtensionClassImpl do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :_links,
    :classes
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :_links => SwaggyJenkins.Model.ExtensionClassImpllinks.t | nil,
    :classes => [String.t] | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:_links, :struct, SwaggyJenkins.Model.ExtensionClassImpllinks)
  end
end

