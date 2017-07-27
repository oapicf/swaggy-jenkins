-module(swagger_router).

-export([get_paths/1]).

-type operations() :: #{
    Method :: binary() => swagger_api:operation_id()
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
        'GetAuthenticatedUser' => #{
            path => "//blue/rest/organizations/:organisation/user/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetClasses' => #{
            path => "//blue/rest/classes/:class",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetOrganisation' => #{
            path => "//blue/rest/organizations/:organisation",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetOrganisations' => #{
            path => "//blue/rest/organizations/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetPipelineBranchByOrg' => #{
            path => "//blue/rest/organizations/:organisation/pipelines/:pipeline/branches/:branch/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetPipelineBranchesByOrg' => #{
            path => "//blue/rest/organizations/:organisation/pipelines/:pipeline/branches",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetPipelineByOrg' => #{
            path => "//blue/rest/organizations/:organisation/pipelines/:pipeline",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetPipelineFolderByOrg' => #{
            path => "//blue/rest/organizations/:organisation/pipelines/:folder/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetPipelineFolderByOrg_0' => #{
            path => "//blue/rest/organizations/:organisation/pipelines/:folder/pipelines/:pipeline",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetPipelinesByOrg' => #{
            path => "//blue/rest/organizations/:organisation/pipelines/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetUser' => #{
            path => "//blue/rest/organizations/:organisation/users/:user",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetUsers' => #{
            path => "//blue/rest/organizations/:organisation/users/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'Search' => #{
            path => "//blue/rest/classes/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'Search_0' => #{
            path => "//blue/rest/search/",
            method => <<"GET">>,
            handler => 'swagger_blue_ocean_handler'
        },
        'GetComputer' => #{
            path => "//computer/api/json?depth=1",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetCrumb' => #{
            path => "//crumbIssuer/api/json",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetJenkins' => #{
            path => "//api/json",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetJob' => #{
            path => "//job/:name/api/json",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetJobConfig' => #{
            path => "//job/:name/config.xml",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetJobLastBuild' => #{
            path => "//job/:name/lastBuild/api/json",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetJobProgressiveText' => #{
            path => "//job/:name/:number/logText/progressiveText",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetQueue' => #{
            path => "//queue/api/json",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetQueueItem' => #{
            path => "//queue/item/:number/api/json",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetView' => #{
            path => "//view/:name/api/json",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'GetViewConfig' => #{
            path => "//view/:name/config.xml",
            method => <<"GET">>,
            handler => 'swagger_remote_access_handler'
        },
        'HeadJenkins' => #{
            path => "//api/json",
            method => <<"HEAD">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostCreateItem' => #{
            path => "//createItem",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostCreateView' => #{
            path => "//createView",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostJobBuild' => #{
            path => "//job/:name/build",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostJobConfig' => #{
            path => "//job/:name/config.xml",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostJobDelete' => #{
            path => "//job/:name/doDelete",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostJobDisable' => #{
            path => "//job/:name/disable",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostJobEnable' => #{
            path => "//job/:name/enable",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostJobLastBuildStop' => #{
            path => "//job/:name/lastBuild/stop",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        },
        'PostViewConfig' => #{
            path => "//view/:name/config.xml",
            method => <<"POST">>,
            handler => 'swagger_remote_access_handler'
        }
    }.

prepare_validator() ->
    R = jsx:decode(element(2, file:read_file(get_swagger_path()))),
    jesse_state:new(R, [{default_schema_ver, <<"http://json-schema.org/draft-04/schema#">>}]).


get_swagger_path() ->
    {ok, AppName} = application:get_application(?MODULE),
    filename:join(swagger_utils:priv_dir(AppName), "swagger.json").


