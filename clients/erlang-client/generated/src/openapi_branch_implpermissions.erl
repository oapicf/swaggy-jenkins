-module(openapi_branch_implpermissions).

-export([encode/1]).

-export_type([openapi_branch_implpermissions/0]).

-type openapi_branch_implpermissions() ::
    #{ 'create' => boolean(),
       'read' => boolean(),
       'start' => boolean(),
       'stop' => boolean(),
       '_class' => binary()
     }.

encode(#{ 'create' := Create,
          'read' := Read,
          'start' := Start,
          'stop' := Stop,
          '_class' := Class
        }) ->
    #{ 'create' => Create,
       'read' => Read,
       'start' => Start,
       'stop' => Stop,
       '_class' => Class
     }.
