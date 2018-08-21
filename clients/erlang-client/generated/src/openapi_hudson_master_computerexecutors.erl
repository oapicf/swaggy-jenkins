-module(openapi_hudson_master_computerexecutors).

-export([encode/1]).

-export_type([openapi_hudson_master_computerexecutors/0]).

-type openapi_hudson_master_computerexecutors() ::
    #{ 'currentExecutable' => openapi_free_style_build:openapi_free_style_build(),
       'idle' => boolean(),
       'likelyStuck' => boolean(),
       'number' => integer(),
       'progress' => integer(),
       '_class' => binary()
     }.

encode(#{ 'currentExecutable' := CurrentExecutable,
          'idle' := Idle,
          'likelyStuck' := LikelyStuck,
          'number' := Number,
          'progress' := Progress,
          '_class' := Class
        }) ->
    #{ 'currentExecutable' => CurrentExecutable,
       'idle' => Idle,
       'likelyStuck' => LikelyStuck,
       'number' => Number,
       'progress' => Progress,
       '_class' => Class
     }.
