-module(openapi_hudson_master_computer).

-include("openapi.hrl").

-export([openapi_hudson_master_computer/0]).

-export([openapi_hudson_master_computer/1]).

-export_type([openapi_hudson_master_computer/0]).

-type openapi_hudson_master_computer() ::
  [ {'_class', binary() }
  | {'displayName', binary() }
  | {'executors', list(openapi_hudson_master_computerexecutors:openapi_hudson_master_computerexecutors()) }
  | {'icon', binary() }
  | {'iconClassName', binary() }
  | {'idle', boolean() }
  | {'jnlpAgent', boolean() }
  | {'launchSupported', boolean() }
  | {'loadStatistics', openapi_label1:openapi_label1() }
  | {'manualLaunchAllowed', boolean() }
  | {'monitorData', openapi_hudson_master_computermonitor_data:openapi_hudson_master_computermonitor_data() }
  | {'numExecutors', integer() }
  | {'offline', boolean() }
  | {'offlineCause', binary() }
  | {'offlineCauseReason', binary() }
  | {'temporarilyOffline', boolean() }
  ].


openapi_hudson_master_computer() ->
    openapi_hudson_master_computer([]).

openapi_hudson_master_computer(Fields) ->
  Default = [ {'_class', binary() }
            , {'displayName', binary() }
            , {'executors', list(openapi_hudson_master_computerexecutors:openapi_hudson_master_computerexecutors()) }
            , {'icon', binary() }
            , {'iconClassName', binary() }
            , {'idle', boolean() }
            , {'jnlpAgent', boolean() }
            , {'launchSupported', boolean() }
            , {'loadStatistics', openapi_label1:openapi_label1() }
            , {'manualLaunchAllowed', boolean() }
            , {'monitorData', openapi_hudson_master_computermonitor_data:openapi_hudson_master_computermonitor_data() }
            , {'numExecutors', integer() }
            , {'offline', boolean() }
            , {'offlineCause', binary() }
            , {'offlineCauseReason', binary() }
            , {'temporarilyOffline', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

