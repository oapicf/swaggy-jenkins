-module(openapi_default_crumb_issuer).

-include("openapi.hrl").

-export([openapi_default_crumb_issuer/0]).

-export([openapi_default_crumb_issuer/1]).

-export_type([openapi_default_crumb_issuer/0]).

-type openapi_default_crumb_issuer() ::
  [ {'_class', binary() }
  | {'crumb', binary() }
  | {'crumbRequestField', binary() }
  ].


openapi_default_crumb_issuer() ->
    openapi_default_crumb_issuer([]).

openapi_default_crumb_issuer(Fields) ->
  Default = [ {'_class', binary() }
            , {'crumb', binary() }
            , {'crumbRequestField', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

