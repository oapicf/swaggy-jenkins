# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.User do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_class,
    :id,
    :fullName,
    :email,
    :name
  ]

  @type t :: %__MODULE__{
    :_class => String.t | nil,
    :id => String.t | nil,
    :fullName => String.t | nil,
    :email => String.t | nil,
    :name => String.t | nil
  }

  def decode(value) do
    value
  end
end

