# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.PipelineRunartifacts do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :size,
    :url,
    :_class
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :size => integer() | nil,
    :url => String.t | nil,
    :_class => String.t | nil
  }

  def decode(value) do
    value
  end
end

