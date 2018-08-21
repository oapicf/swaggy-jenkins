-module(openapi_github_file).

-export([encode/1]).

-export_type([openapi_github_file/0]).

-type openapi_github_file() ::
    #{ 'content' => openapi_github_content:openapi_github_content(),
       '_class' => binary()
     }.

encode(#{ 'content' := Content,
          '_class' := Class
        }) ->
    #{ 'content' => Content,
       '_class' => Class
     }.
