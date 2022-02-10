-module(openapi_github_repository).

-include("openapi.hrl").

-export([openapi_github_repository/0]).

-export([openapi_github_repository/1]).

-export_type([openapi_github_repository/0]).

-type openapi_github_repository() ::
  [ {'_class', binary() }
  | {'_links', openapi_github_repositorylinks:openapi_github_repositorylinks() }
  | {'defaultBranch', binary() }
  | {'description', binary() }
  | {'name', binary() }
  | {'permissions', openapi_github_repositorypermissions:openapi_github_repositorypermissions() }
  | {'private', boolean() }
  | {'fullName', binary() }
  ].


openapi_github_repository() ->
    openapi_github_repository([]).

openapi_github_repository(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_github_repositorylinks:openapi_github_repositorylinks() }
            , {'defaultBranch', binary() }
            , {'description', binary() }
            , {'name', binary() }
            , {'permissions', openapi_github_repositorypermissions:openapi_github_repositorypermissions() }
            , {'private', boolean() }
            , {'fullName', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

