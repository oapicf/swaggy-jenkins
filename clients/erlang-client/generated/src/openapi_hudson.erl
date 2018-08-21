-module(openapi_hudson).

-export([encode/1]).

-export_type([openapi_hudson/0]).

-type openapi_hudson() ::
    #{ '_class' => binary(),
       'assignedLabels' => list(),
       'mode' => binary(),
       'nodeDescription' => binary(),
       'nodeName' => binary(),
       'numExecutors' => integer(),
       'description' => binary(),
       'jobs' => list(),
       'primaryView' => openapi_all_view:openapi_all_view(),
       'quietingDown' => boolean(),
       'slaveAgentPort' => integer(),
       'unlabeledLoad' => openapi_unlabeled_load_statistics:openapi_unlabeled_load_statistics(),
       'useCrumbs' => boolean(),
       'useSecurity' => boolean(),
       'views' => list()
     }.

encode(#{ '_class' := Class,
          'assignedLabels' := AssignedLabels,
          'mode' := Mode,
          'nodeDescription' := NodeDescription,
          'nodeName' := NodeName,
          'numExecutors' := NumExecutors,
          'description' := Description,
          'jobs' := Jobs,
          'primaryView' := PrimaryView,
          'quietingDown' := QuietingDown,
          'slaveAgentPort' := SlaveAgentPort,
          'unlabeledLoad' := UnlabeledLoad,
          'useCrumbs' := UseCrumbs,
          'useSecurity' := UseSecurity,
          'views' := Views
        }) ->
    #{ '_class' => Class,
       'assignedLabels' => AssignedLabels,
       'mode' => Mode,
       'nodeDescription' => NodeDescription,
       'nodeName' => NodeName,
       'numExecutors' => NumExecutors,
       'description' => Description,
       'jobs' => Jobs,
       'primaryView' => PrimaryView,
       'quietingDown' => QuietingDown,
       'slaveAgentPort' => SlaveAgentPort,
       'unlabeledLoad' => UnlabeledLoad,
       'useCrumbs' => UseCrumbs,
       'useSecurity' => UseSecurity,
       'views' => Views
     }.
