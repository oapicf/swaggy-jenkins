-module(openapi_extension_class_container_impl1map).

-include("openapi.hrl").

-export([openapi_extension_class_container_impl1map/0]).

-export([openapi_extension_class_container_impl1map/1]).

-export_type([openapi_extension_class_container_impl1map/0]).

-type openapi_extension_class_container_impl1map() ::
  [ {'io_jenkins_blueocean_service_embedded_rest_PipelineImpl', openapi_extension_class_impl:openapi_extension_class_impl() }
  | {'io_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImpl', openapi_extension_class_impl:openapi_extension_class_impl() }
  | {'_class', binary() }
  ].


openapi_extension_class_container_impl1map() ->
    openapi_extension_class_container_impl1map([]).

openapi_extension_class_container_impl1map(Fields) ->
  Default = [ {'io.jenkins.blueocean.service.embedded.rest.PipelineImpl', openapi_extension_class_impl:openapi_extension_class_impl() }
            , {'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl', openapi_extension_class_impl:openapi_extension_class_impl() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

