-module(openapi_queue_item_impl).

-export([encode/1]).

-export_type([openapi_queue_item_impl/0]).

-type openapi_queue_item_impl() ::
    #{ '_class' => binary(),
       'expectedBuildNumber' => integer(),
       'id' => binary(),
       'pipeline' => binary(),
       'queuedTime' => integer()
     }.

encode(#{ '_class' := Class,
          'expectedBuildNumber' := ExpectedBuildNumber,
          'id' := Id,
          'pipeline' := Pipeline,
          'queuedTime' := QueuedTime
        }) ->
    #{ '_class' => Class,
       'expectedBuildNumber' => ExpectedBuildNumber,
       'id' => Id,
       'pipeline' => Pipeline,
       'queuedTime' => QueuedTime
     }.
