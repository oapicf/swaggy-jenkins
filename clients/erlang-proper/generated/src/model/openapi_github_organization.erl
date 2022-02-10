-module(openapi_github_organization).

-include("openapi.hrl").

-export([openapi_github_organization/0]).

-export([openapi_github_organization/1]).

-export_type([openapi_github_organization/0]).

-type openapi_github_organization() ::
  [ {'_class', binary() }
  | {'_links', openapi_github_organizationlinks:openapi_github_organizationlinks() }
  | {'jenkinsOrganizationPipeline', boolean() }
  | {'name', binary() }
  ].


openapi_github_organization() ->
    openapi_github_organization([]).

openapi_github_organization(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_github_organizationlinks:openapi_github_organizationlinks() }
            , {'jenkinsOrganizationPipeline', boolean() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

