-module(openapi_github_organization).

-export([encode/1]).

-export_type([openapi_github_organization/0]).

-type openapi_github_organization() ::
    #{ '_class' => binary(),
       '_links' => openapi_github_organizationlinks:openapi_github_organizationlinks(),
       'jenkinsOrganizationPipeline' => boolean(),
       'name' => binary()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'jenkinsOrganizationPipeline' := JenkinsOrganizationPipeline,
          'name' := Name
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'jenkinsOrganizationPipeline' => JenkinsOrganizationPipeline,
       'name' => Name
     }.
