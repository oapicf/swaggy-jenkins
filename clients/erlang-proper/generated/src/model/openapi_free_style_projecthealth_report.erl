-module(openapi_free_style_projecthealth_report).

-include("openapi.hrl").

-export([openapi_free_style_projecthealth_report/0]).

-export([openapi_free_style_projecthealth_report/1]).

-export_type([openapi_free_style_projecthealth_report/0]).

-type openapi_free_style_projecthealth_report() ::
  [ {'description', binary() }
  | {'iconClassName', binary() }
  | {'iconUrl', binary() }
  | {'score', integer() }
  | {'_class', binary() }
  ].


openapi_free_style_projecthealth_report() ->
    openapi_free_style_projecthealth_report([]).

openapi_free_style_projecthealth_report(Fields) ->
  Default = [ {'description', binary() }
            , {'iconClassName', binary() }
            , {'iconUrl', binary() }
            , {'score', integer() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

