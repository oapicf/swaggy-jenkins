-module(openapi_github_scm).

-include("openapi.hrl").

-export([openapi_github_scm/0]).

-export([openapi_github_scm/1]).

-export_type([openapi_github_scm/0]).

-type openapi_github_scm() ::
  [ {'_class', binary() }
  | {'_links', openapi_github_scmlinks:openapi_github_scmlinks() }
  | {'credentialId', binary() }
  | {'id', binary() }
  | {'uri', binary() }
  ].


openapi_github_scm() ->
    openapi_github_scm([]).

openapi_github_scm(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_github_scmlinks:openapi_github_scmlinks() }
            , {'credentialId', binary() }
            , {'id', binary() }
            , {'uri', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

