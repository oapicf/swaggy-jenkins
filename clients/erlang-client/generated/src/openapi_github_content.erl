-module(openapi_github_content).

-export([encode/1]).

-export_type([openapi_github_content/0]).

-type openapi_github_content() ::
    #{ 'name' => binary(),
       'sha' => binary(),
       '_class' => binary(),
       'repo' => binary(),
       'size' => integer(),
       'owner' => binary(),
       'path' => binary(),
       'base64Data' => binary()
     }.

encode(#{ 'name' := Name,
          'sha' := Sha,
          '_class' := Class,
          'repo' := Repo,
          'size' := Size,
          'owner' := Owner,
          'path' := Path,
          'base64Data' := Base64Data
        }) ->
    #{ 'name' => Name,
       'sha' => Sha,
       '_class' => Class,
       'repo' => Repo,
       'size' => Size,
       'owner' => Owner,
       'path' => Path,
       'base64Data' => Base64Data
     }.
