# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.FavoriteImpl do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :_links,
    :item
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :_links => SwaggyJenkins.Model.FavoriteImpllinks.t | nil,
    :item => SwaggyJenkins.Model.PipelineImpl.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:_links, :struct, SwaggyJenkins.Model.FavoriteImpllinks)
     |> Deserializer.deserialize(:item, :struct, SwaggyJenkins.Model.PipelineImpl)
  end
end

