-module(openapi_hudson_master_computer).

-export([encode/1]).

-export_type([openapi_hudson_master_computer/0]).

-type openapi_hudson_master_computer() ::
    #{ '_class' => binary(),
       'displayName' => binary(),
       'executors' => list(),
       'icon' => binary(),
       'iconClassName' => binary(),
       'idle' => boolean(),
       'jnlpAgent' => boolean(),
       'launchSupported' => boolean(),
       'loadStatistics' => openapi_label1:openapi_label1(),
       'manualLaunchAllowed' => boolean(),
       'monitorData' => openapi_hudson_master_computermonitor_data:openapi_hudson_master_computermonitor_data(),
       'numExecutors' => integer(),
       'offline' => boolean(),
       'offlineCause' => binary(),
       'offlineCauseReason' => binary(),
       'temporarilyOffline' => boolean()
     }.

encode(#{ '_class' := Class,
          'displayName' := DisplayName,
          'executors' := Executors,
          'icon' := Icon,
          'iconClassName' := IconClassName,
          'idle' := Idle,
          'jnlpAgent' := JnlpAgent,
          'launchSupported' := LaunchSupported,
          'loadStatistics' := LoadStatistics,
          'manualLaunchAllowed' := ManualLaunchAllowed,
          'monitorData' := MonitorData,
          'numExecutors' := NumExecutors,
          'offline' := Offline,
          'offlineCause' := OfflineCause,
          'offlineCauseReason' := OfflineCauseReason,
          'temporarilyOffline' := TemporarilyOffline
        }) ->
    #{ '_class' => Class,
       'displayName' => DisplayName,
       'executors' => Executors,
       'icon' => Icon,
       'iconClassName' => IconClassName,
       'idle' => Idle,
       'jnlpAgent' => JnlpAgent,
       'launchSupported' => LaunchSupported,
       'loadStatistics' => LoadStatistics,
       'manualLaunchAllowed' => ManualLaunchAllowed,
       'monitorData' => MonitorData,
       'numExecutors' => NumExecutors,
       'offline' => Offline,
       'offlineCause' => OfflineCause,
       'offlineCauseReason' => OfflineCauseReason,
       'temporarilyOffline' => TemporarilyOffline
     }.
