-module(openapi_github_organizationlinks).

-include("openapi.hrl").

-export([openapi_github_organizationlinks/0]).

-export([openapi_github_organizationlinks/1]).

-export_type([openapi_github_organizationlinks/0]).

-type openapi_github_organizationlinks() ::
  [ {'repositories', openapi_link:openapi_link() }
  | {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_github_organizationlinks() ->
    openapi_github_organizationlinks([]).

openapi_github_organizationlinks(Fields) ->
  Default = [ {'repositories', openapi_link:openapi_link() }
            , {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

