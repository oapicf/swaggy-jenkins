-module(openapi_github_repository).

-export([encode/1]).

-export_type([openapi_github_repository/0]).

-type openapi_github_repository() ::
    #{ '_class' => binary(),
       '_links' => openapi_github_repositorylinks:openapi_github_repositorylinks(),
       'defaultBranch' => binary(),
       'description' => binary(),
       'name' => binary(),
       'permissions' => openapi_github_repositorypermissions:openapi_github_repositorypermissions(),
       'private' => boolean(),
       'fullName' => binary()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'defaultBranch' := DefaultBranch,
          'description' := Description,
          'name' := Name,
          'permissions' := Permissions,
          'private' := Private,
          'fullName' := FullName
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'defaultBranch' => DefaultBranch,
       'description' => Description,
       'name' => Name,
       'permissions' => Permissions,
       'private' => Private,
       'fullName' => FullName
     }.
