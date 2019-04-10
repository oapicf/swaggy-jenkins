-module(openapi_router).

-export([get_paths/1]).

-type operations() :: #{
    Method :: binary() => openapi_api:operation_id()
}.

-type init_opts()  :: {
    Operations :: operations(),
    LogicHandler :: atom(),
    ValidatorState :: jesse_state:state()
}.

-export_type([init_opts/0]).

-spec get_paths(LogicHandler :: atom()) ->  [{'_',[{
    Path :: string(),
    Handler :: atom(),
    InitOpts :: init_opts()
}]}].

get_paths(LogicHandler) ->
    ValidatorState = prepare_validator(),
    PreparedPaths = maps:fold(
        fun(Path, #{operations := Operations, handler := Handler}, Acc) ->
            [{Path, Handler, Operations} | Acc]
        end,
        [],
        group_paths()
    ),
    [
        {'_',
            [{P, H, {O, LogicHandler, ValidatorState}} || {P, H, O} <- PreparedPaths]
        }
    ].

group_paths() ->
    maps:fold(
        fun(OperationID, #{path := Path, method := Method, handler := Handler}, Acc) ->
            case maps:find(Path, Acc) of
                {ok, PathInfo0 = #{operations := Operations0}} ->
                    Operations = Operations0#{Method => OperationID},
                    PathInfo = PathInfo0#{operations => Operations},
                    Acc#{Path => PathInfo};
                error ->
                    Operations = #{Method => OperationID},
                    PathInfo = #{handler => Handler, operations => Operations},
                    Acc#{Path => PathInfo}
            end
        end,
        #{},
        get_operations()
    ).

get_operations() ->
    #{ 
        'GetCrumb' => #{
            path => "//crumbIssuer/api/json",
            method => <<"GET">>,
            handler => 'openapi_base_access_handler'
        },
        'DeletePipelineQueueItem' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue",
            method => <<"DELETE">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetAuthenticatedUser' => #{
            path => "//blue/rest/organizations/:organization/user/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetClasses' => #{
            path => "//blue/rest/classes/:class",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetJsonWebKey' => #{
            path => "//jwt-auth/jwks/:key",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetJsonWebToken' => #{
            path => "//jwt-auth/token",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetOrganisation' => #{
            path => "//blue/rest/organizations/:organization",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetOrganisations' => #{
            path => "//blue/rest/organizations/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipeline' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineActivities' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/activities",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineBranch' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineBranchRun' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineBranches' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/branches",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineFolder' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:folder/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineFolderPipeline' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineQueue' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/queue",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRun' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRunLog' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRunNode' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRunNodeStep' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRunNodeStepLog' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRunNodeSteps' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRunNodes' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelineRuns' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetPipelines' => #{
            path => "//blue/rest/organizations/:organization/pipelines/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetSCM' => #{
            path => "//blue/rest/organizations/:organization/scm/:scm",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetSCMOrganisationRepositories' => #{
            path => "//blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetSCMOrganisationRepository' => #{
            path => "//blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetSCMOrganisations' => #{
            path => "//blue/rest/organizations/:organization/scm/:scm/organizations",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetUser' => #{
            path => "//blue/rest/organizations/:organization/users/:user",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetUserFavorites' => #{
            path => "//blue/rest/users/:user/favorites",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetUsers' => #{
            path => "//blue/rest/organizations/:organization/users/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'PostPipelineRun' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay",
            method => <<"POST">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'PostPipelineRuns' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs",
            method => <<"POST">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'PutPipelineFavorite' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/favorite",
            method => <<"PUT">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'PutPipelineRun' => #{
            path => "//blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop",
            method => <<"PUT">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'Search' => #{
            path => "//blue/rest/search/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'SearchClasses' => #{
            path => "//blue/rest/classes/",
            method => <<"GET">>,
            handler => 'openapi_blue_ocean_handler'
        },
        'GetComputer' => #{
            path => "//computer/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetJenkins' => #{
            path => "//api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetJob' => #{
            path => "//job/:name/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetJobConfig' => #{
            path => "//job/:name/config.xml",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetJobLastBuild' => #{
            path => "//job/:name/lastBuild/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetJobProgressiveText' => #{
            path => "//job/:name/:number/logText/progressiveText",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetQueue' => #{
            path => "//queue/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetQueueItem' => #{
            path => "//queue/item/:number/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetView' => #{
            path => "//view/:name/api/json",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'GetViewConfig' => #{
            path => "//view/:name/config.xml",
            method => <<"GET">>,
            handler => 'openapi_remote_access_handler'
        },
        'HeadJenkins' => #{
            path => "//api/json",
            method => <<"HEAD">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostCreateItem' => #{
            path => "//createItem",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostCreateView' => #{
            path => "//createView",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostJobBuild' => #{
            path => "//job/:name/build",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostJobConfig' => #{
            path => "//job/:name/config.xml",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostJobDelete' => #{
            path => "//job/:name/doDelete",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostJobDisable' => #{
            path => "//job/:name/disable",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostJobEnable' => #{
            path => "//job/:name/enable",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostJobLastBuildStop' => #{
            path => "//job/:name/lastBuild/stop",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        },
        'PostViewConfig' => #{
            path => "//view/:name/config.xml",
            method => <<"POST">>,
            handler => 'openapi_remote_access_handler'
        }
    }.

prepare_validator() ->
    R = jsx:decode(element(2, file:read_file(get_openapi_path()))),
    jesse_state:new(R, [{default_schema_ver, <<"http://json-schema.org/draft-04/schema#">>}]).


get_openapi_path() ->
    {ok, AppName} = application:get_application(?MODULE),
    filename:join(openapi_utils:priv_dir(AppName), "openapi.json").


