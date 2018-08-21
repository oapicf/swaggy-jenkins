-module(openapi_free_style_build).

-export([encode/1]).

-export_type([openapi_free_style_build/0]).

-type openapi_free_style_build() ::
    #{ '_class' => binary(),
       'number' => integer(),
       'url' => binary(),
       'actions' => list(),
       'building' => boolean(),
       'description' => binary(),
       'displayName' => binary(),
       'duration' => integer(),
       'estimatedDuration' => integer(),
       'executor' => binary(),
       'fullDisplayName' => binary(),
       'id' => binary(),
       'keepLog' => boolean(),
       'queueId' => integer(),
       'result' => binary(),
       'timestamp' => integer(),
       'builtOn' => binary(),
       'changeSet' => openapi_empty_change_log_set:openapi_empty_change_log_set()
     }.

encode(#{ '_class' := Class,
          'number' := Number,
          'url' := Url,
          'actions' := Actions,
          'building' := Building,
          'description' := Description,
          'displayName' := DisplayName,
          'duration' := Duration,
          'estimatedDuration' := EstimatedDuration,
          'executor' := Executor,
          'fullDisplayName' := FullDisplayName,
          'id' := Id,
          'keepLog' := KeepLog,
          'queueId' := QueueId,
          'result' := Result,
          'timestamp' := Timestamp,
          'builtOn' := BuiltOn,
          'changeSet' := ChangeSet
        }) ->
    #{ '_class' => Class,
       'number' => Number,
       'url' => Url,
       'actions' => Actions,
       'building' => Building,
       'description' => Description,
       'displayName' => DisplayName,
       'duration' => Duration,
       'estimatedDuration' => EstimatedDuration,
       'executor' => Executor,
       'fullDisplayName' => FullDisplayName,
       'id' => Id,
       'keepLog' => KeepLog,
       'queueId' => QueueId,
       'result' => Result,
       'timestamp' => Timestamp,
       'builtOn' => BuiltOn,
       'changeSet' => ChangeSet
     }.
