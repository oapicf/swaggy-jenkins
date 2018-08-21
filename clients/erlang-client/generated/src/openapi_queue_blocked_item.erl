-module(openapi_queue_blocked_item).

-export([encode/1]).

-export_type([openapi_queue_blocked_item/0]).

-type openapi_queue_blocked_item() ::
    #{ '_class' => binary(),
       'actions' => list(),
       'blocked' => boolean(),
       'buildable' => boolean(),
       'id' => integer(),
       'inQueueSince' => integer(),
       'params' => binary(),
       'stuck' => boolean(),
       'task' => openapi_free_style_project:openapi_free_style_project(),
       'url' => binary(),
       'why' => binary(),
       'buildableStartMilliseconds' => integer()
     }.

encode(#{ '_class' := Class,
          'actions' := Actions,
          'blocked' := Blocked,
          'buildable' := Buildable,
          'id' := Id,
          'inQueueSince' := InQueueSince,
          'params' := Params,
          'stuck' := Stuck,
          'task' := Task,
          'url' := Url,
          'why' := Why,
          'buildableStartMilliseconds' := BuildableStartMilliseconds
        }) ->
    #{ '_class' => Class,
       'actions' => Actions,
       'blocked' => Blocked,
       'buildable' => Buildable,
       'id' => Id,
       'inQueueSince' => InQueueSince,
       'params' => Params,
       'stuck' => Stuck,
       'task' => Task,
       'url' => Url,
       'why' => Why,
       'buildableStartMilliseconds' => BuildableStartMilliseconds
     }.
