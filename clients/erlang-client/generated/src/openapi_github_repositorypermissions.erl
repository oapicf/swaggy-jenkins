-module(openapi_github_repositorypermissions).

-export([encode/1]).

-export_type([openapi_github_repositorypermissions/0]).

-type openapi_github_repositorypermissions() ::
    #{ 'admin' => boolean(),
       'push' => boolean(),
       'pull' => boolean(),
       '_class' => binary()
     }.

encode(#{ 'admin' := Admin,
          'push' := Push,
          'pull' := Pull,
          '_class' := Class
        }) ->
    #{ 'admin' => Admin,
       'push' => Push,
       'pull' => Pull,
       '_class' => Class
     }.
