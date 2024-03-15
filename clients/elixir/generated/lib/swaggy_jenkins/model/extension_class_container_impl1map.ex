# NOTE: This file is auto generated by OpenAPI Generator 7.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SwaggyJenkins.Model.ExtensionClassContainerImpl1map do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"io.jenkins.blueocean.service.embedded.rest.PipelineImpl",
    :"io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl",
    :_class
  ]

  @type t :: %__MODULE__{
    :"io.jenkins.blueocean.service.embedded.rest.PipelineImpl" => SwaggyJenkins.Model.ExtensionClassImpl.t | nil,
    :"io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl" => SwaggyJenkins.Model.ExtensionClassImpl.t | nil,
    :_class => String.t | nil
  }

  alias SwaggyJenkins.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:"io.jenkins.blueocean.service.embedded.rest.PipelineImpl", :struct, SwaggyJenkins.Model.ExtensionClassImpl)
     |> Deserializer.deserialize(:"io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl", :struct, SwaggyJenkins.Model.ExtensionClassImpl)
  end
end

