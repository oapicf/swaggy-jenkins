-module(openapi_hudson).

-include("openapi.hrl").

-export([openapi_hudson/0]).

-export([openapi_hudson/1]).

-export_type([openapi_hudson/0]).

-type openapi_hudson() ::
  [ {'_class', binary() }
  | {'assignedLabels', list(openapi_hudsonassigned_labels:openapi_hudsonassigned_labels()) }
  | {'mode', binary() }
  | {'nodeDescription', binary() }
  | {'nodeName', binary() }
  | {'numExecutors', integer() }
  | {'description', binary() }
  | {'jobs', list(openapi_free_style_project:openapi_free_style_project()) }
  | {'primaryView', openapi_all_view:openapi_all_view() }
  | {'quietingDown', boolean() }
  | {'slaveAgentPort', integer() }
  | {'unlabeledLoad', openapi_unlabeled_load_statistics:openapi_unlabeled_load_statistics() }
  | {'useCrumbs', boolean() }
  | {'useSecurity', boolean() }
  | {'views', list(openapi_all_view:openapi_all_view()) }
  ].


openapi_hudson() ->
    openapi_hudson([]).

openapi_hudson(Fields) ->
  Default = [ {'_class', binary() }
            , {'assignedLabels', list(openapi_hudsonassigned_labels:openapi_hudsonassigned_labels()) }
            , {'mode', binary() }
            , {'nodeDescription', binary() }
            , {'nodeName', binary() }
            , {'numExecutors', integer() }
            , {'description', binary() }
            , {'jobs', list(openapi_free_style_project:openapi_free_style_project()) }
            , {'primaryView', openapi_all_view:openapi_all_view() }
            , {'quietingDown', boolean() }
            , {'slaveAgentPort', integer() }
            , {'unlabeledLoad', openapi_unlabeled_load_statistics:openapi_unlabeled_load_statistics() }
            , {'useCrumbs', boolean() }
            , {'useSecurity', boolean() }
            , {'views', list(openapi_all_view:openapi_all_view()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

