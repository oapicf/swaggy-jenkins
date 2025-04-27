-module(openapi_router).

-export([get_paths/1]).

-type method() :: binary().
-type operations() :: #{method() => openapi_api:operation_id()}.
-type init_opts()  :: {operations(), module()}.

-export_type([init_opts/0]).

-spec get_paths(LogicHandler :: module()) -> cowboy_router:routes().
get_paths(LogicHandler) ->
    PreparedPaths = maps:fold(
                      fun(Path, #{operations := Operations, handler := Handler}, Acc) ->
                              [{Path, Handler, Operations} | Acc]
                      end, [], group_paths()
                     ),
    [{'_', [{P, H, {O, LogicHandler}} || {P, H, O} <- PreparedPaths]}].

group_paths() ->
    maps:fold(
      fun(OperationID, #{servers := Servers, base_path := BasePath, path := Path,
                         method := Method, handler := Handler}, Acc) ->
              FullPaths = build_full_paths(Servers, BasePath, Path),
              merge_paths(FullPaths, OperationID, Method, Handler, Acc)
      end, #{}, get_operations()).

build_full_paths([], BasePath, Path) ->
    [lists:append([BasePath, Path])];
build_full_paths(Servers, _BasePath, Path) ->
    [lists:append([Server, Path]) || Server <- Servers ].

merge_paths(FullPaths, OperationID, Method, Handler, Acc) ->
    lists:foldl(
      fun(Path, Acc0) ->
              case maps:find(Path, Acc0) of
                  {ok, PathInfo0 = #{operations := Operations0}} ->
                      Operations = Operations0#{Method => OperationID},
                      PathInfo = PathInfo0#{operations => Operations},
                      Acc0#{Path => PathInfo};
                  error ->
                      Operations = #{Method => OperationID},
                      PathInfo = #{handler => Handler, operations => Operations},
                      Acc0#{Path => PathInfo}
              end
      end, Acc, FullPaths).

get_operations() ->
    #{ 
       'getCrumb' => #{
            servers => [],
            base_path => "",
            path => "/crumbIssuer/api/json",
            method => <<"GET">>,
            handler => 'openapi_base_handler'
        },
       'deletePipelineQueueItem' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue",
            method => <<"DELETE">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getAuthenticatedUser' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/user/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getClasses' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/classes/:class",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getJsonWebKey' => #{
            servers => [],
            base_path => "",
            path => "/jwt-auth/jwks/:key",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getJsonWebToken' => #{
            servers => [],
            base_path => "",
            path => "/jwt-auth/token",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getOrganisation' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getOrganisations' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipeline' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineActivities' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/activities",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineBranch' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineBranchRun' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineBranches' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/branches",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineFolder' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:folder/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineFolderPipeline' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineQueue' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/queue",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRun' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRunLog' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRunNode' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRunNodeStep' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRunNodeStepLog' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRunNodeSteps' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRunNodes' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelineRuns' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getPipelines' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getSCM' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/scm/:scm",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getSCMOrganisationRepositories' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getSCMOrganisationRepository' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getSCMOrganisations' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/scm/:scm/organizations",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getUser' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/users/:user",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getUserFavorites' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/users/:user/favorites",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getUsers' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/users/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'postPipelineRun' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay",
            method => <<"POST">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'postPipelineRuns' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs",
            method => <<"POST">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'putPipelineFavorite' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/favorite",
            method => <<"PUT">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'putPipelineRun' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop",
            method => <<"PUT">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'search' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/search/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'searchClasses' => #{
            servers => [],
            base_path => "",
            path => "/blue/rest/classes/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
       'getComputer' => #{
            servers => [],
            base_path => "",
            path => "/computer/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getJenkins' => #{
            servers => [],
            base_path => "",
            path => "/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getJob' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getJobConfig' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/config.xml",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getJobLastBuild' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/lastBuild/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getJobProgressiveText' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/:number/logText/progressiveText",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getQueue' => #{
            servers => [],
            base_path => "",
            path => "/queue/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getQueueItem' => #{
            servers => [],
            base_path => "",
            path => "/queue/item/:number/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getView' => #{
            servers => [],
            base_path => "",
            path => "/view/:name/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'getViewConfig' => #{
            servers => [],
            base_path => "",
            path => "/view/:name/config.xml",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
       'headJenkins' => #{
            servers => [],
            base_path => "",
            path => "/api/json",
            method => <<"HEAD">>,
            handler => 'openapi_remote_access_handler'
        },
       'postCreateItem' => #{
            servers => [],
            base_path => "",
            path => "/createItem",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postCreateView' => #{
            servers => [],
            base_path => "",
            path => "/createView",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postJobBuild' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/build",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postJobConfig' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/config.xml",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postJobDelete' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/doDelete",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postJobDisable' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/disable",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postJobEnable' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/enable",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postJobLastBuildStop' => #{
            servers => [],
            base_path => "",
            path => "/job/:name/lastBuild/stop",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
       'postViewConfig' => #{
            servers => [],
            base_path => "",
            path => "/view/:name/config.xml",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        }
    }.
