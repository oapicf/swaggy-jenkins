-module(openapi_extension_class_container_impl1map).

-export([encode/1]).

-export_type([openapi_extension_class_container_impl1map/0]).

-type openapi_extension_class_container_impl1map() ::
    #{ 'io_jenkins_blueocean_service_embedded_rest_PipelineImpl' => openapi_extension_class_impl:openapi_extension_class_impl(),
       'io_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImpl' => openapi_extension_class_impl:openapi_extension_class_impl(),
       '_class' => binary()
     }.

encode(#{ 'io_jenkins_blueocean_service_embedded_rest_PipelineImpl' := IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl,
          'io_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImpl' := IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl,
          '_class' := Class
        }) ->
    #{ 'io.jenkins.blueocean.service.embedded.rest.PipelineImpl' => IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl,
       'io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl' => IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl,
       '_class' => Class
     }.
