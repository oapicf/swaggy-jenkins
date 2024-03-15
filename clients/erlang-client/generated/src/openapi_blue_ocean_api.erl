-module(openapi_blue_ocean_api).

-export([delete_pipeline_queue_item/4, delete_pipeline_queue_item/5,
         get_authenticated_user/2, get_authenticated_user/3,
         get_classes/2, get_classes/3,
         get_json_web_key/2, get_json_web_key/3,
         get_json_web_token/1, get_json_web_token/2,
         get_organisation/2, get_organisation/3,
         get_organisations/1, get_organisations/2,
         get_pipeline/3, get_pipeline/4,
         get_pipeline_activities/3, get_pipeline_activities/4,
         get_pipeline_branch/4, get_pipeline_branch/5,
         get_pipeline_branch_run/5, get_pipeline_branch_run/6,
         get_pipeline_branches/3, get_pipeline_branches/4,
         get_pipeline_folder/3, get_pipeline_folder/4,
         get_pipeline_folder_pipeline/4, get_pipeline_folder_pipeline/5,
         get_pipeline_queue/3, get_pipeline_queue/4,
         get_pipeline_run/4, get_pipeline_run/5,
         get_pipeline_run_log/4, get_pipeline_run_log/5,
         get_pipeline_run_node/5, get_pipeline_run_node/6,
         get_pipeline_run_node_step/6, get_pipeline_run_node_step/7,
         get_pipeline_run_node_step_log/6, get_pipeline_run_node_step_log/7,
         get_pipeline_run_node_steps/5, get_pipeline_run_node_steps/6,
         get_pipeline_run_nodes/4, get_pipeline_run_nodes/5,
         get_pipeline_runs/3, get_pipeline_runs/4,
         get_pipelines/2, get_pipelines/3,
         get_scm/3, get_scm/4,
         get_scm_organisation_repositories/4, get_scm_organisation_repositories/5,
         get_scm_organisation_repository/5, get_scm_organisation_repository/6,
         get_scm_organisations/3, get_scm_organisations/4,
         get_user/3, get_user/4,
         get_user_favorites/2, get_user_favorites/3,
         get_users/2, get_users/3,
         post_pipeline_run/4, post_pipeline_run/5,
         post_pipeline_runs/3, post_pipeline_runs/4,
         put_pipeline_favorite/4, put_pipeline_favorite/5,
         put_pipeline_run/4, put_pipeline_run/5,
         search/2, search/3,
         search_classes/2, search_classes/3]).

-define(BASE_URL, <<"">>).

%% @doc 
%% Delete queue item from an organization pipeline queue
-spec delete_pipeline_queue_item(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_pipeline_queue_item(Ctx, Organization, Pipeline, Queue) ->
    delete_pipeline_queue_item(Ctx, Organization, Pipeline, Queue, #{}).

-spec delete_pipeline_queue_item(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
delete_pipeline_queue_item(Ctx, Organization, Pipeline, Queue, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/queue/", Queue, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve authenticated user details for an organization
-spec get_authenticated_user(ctx:ctx(), binary()) -> {ok, openapi_user:openapi_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_authenticated_user(Ctx, Organization) ->
    get_authenticated_user(Ctx, Organization, #{}).

-spec get_authenticated_user(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_user:openapi_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_authenticated_user(Ctx, Organization, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/user/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get a list of class names supported by a given class
-spec get_classes(ctx:ctx(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_classes(Ctx, Class) ->
    get_classes(Ctx, Class, #{}).

-spec get_classes(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_classes(Ctx, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/classes/", Class, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve JSON Web Key
-spec get_json_web_key(ctx:ctx(), integer()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_json_web_key(Ctx, Key) ->
    get_json_web_key(Ctx, Key, #{}).

-spec get_json_web_key(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_json_web_key(Ctx, Key, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/jwt-auth/jwks/", Key, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve JSON Web Token
-spec get_json_web_token(ctx:ctx()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_json_web_token(Ctx) ->
    get_json_web_token(Ctx, #{}).

-spec get_json_web_token(ctx:ctx(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_json_web_token(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/jwt-auth/token"],
    QS = lists:flatten([])++openapi_utils:optional_params(['expiryTimeInMins', 'maxExpiryTimeInMins'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve organization details
-spec get_organisation(ctx:ctx(), binary()) -> {ok, openapi_organisation:openapi_organisation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_organisation(Ctx, Organization) ->
    get_organisation(Ctx, Organization, #{}).

-spec get_organisation(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_organisation:openapi_organisation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_organisation(Ctx, Organization, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve all organizations details
-spec get_organisations(ctx:ctx()) -> {ok, [openapi_organisation:openapi_organisation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_organisations(Ctx) ->
    get_organisations(Ctx, #{}).

-spec get_organisations(ctx:ctx(), maps:map()) -> {ok, [openapi_organisation:openapi_organisation()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_organisations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve pipeline details for an organization
-spec get_pipeline(ctx:ctx(), binary(), binary()) -> {ok, openapi_pipeline:openapi_pipeline(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline(Ctx, Organization, Pipeline) ->
    get_pipeline(Ctx, Organization, Pipeline, #{}).

-spec get_pipeline(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline:openapi_pipeline(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline(Ctx, Organization, Pipeline, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve all activities details for an organization pipeline
-spec get_pipeline_activities(ctx:ctx(), binary(), binary()) -> {ok, [openapi_pipeline_activity:openapi_pipeline_activity()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_activities(Ctx, Organization, Pipeline) ->
    get_pipeline_activities(Ctx, Organization, Pipeline, #{}).

-spec get_pipeline_activities(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_pipeline_activity:openapi_pipeline_activity()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_activities(Ctx, Organization, Pipeline, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/activities"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve branch details for an organization pipeline
-spec get_pipeline_branch(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_branch_impl:openapi_branch_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_branch(Ctx, Organization, Pipeline, Branch) ->
    get_pipeline_branch(Ctx, Organization, Pipeline, Branch, #{}).

-spec get_pipeline_branch(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_branch_impl:openapi_branch_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_branch(Ctx, Organization, Pipeline, Branch, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/branches/", Branch, "/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve branch run details for an organization pipeline
-spec get_pipeline_branch_run(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, openapi_pipeline_run:openapi_pipeline_run(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_branch_run(Ctx, Organization, Pipeline, Branch, Run) ->
    get_pipeline_branch_run(Ctx, Organization, Pipeline, Branch, Run, #{}).

-spec get_pipeline_branch_run(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline_run:openapi_pipeline_run(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_branch_run(Ctx, Organization, Pipeline, Branch, Run, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/branches/", Branch, "/runs/", Run, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve all branches details for an organization pipeline
-spec get_pipeline_branches(ctx:ctx(), binary(), binary()) -> {ok, openapi_multibranch_pipeline:openapi_multibranch_pipeline(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_branches(Ctx, Organization, Pipeline) ->
    get_pipeline_branches(Ctx, Organization, Pipeline, #{}).

-spec get_pipeline_branches(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_multibranch_pipeline:openapi_multibranch_pipeline(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_branches(Ctx, Organization, Pipeline, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/branches"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve pipeline folder for an organization
-spec get_pipeline_folder(ctx:ctx(), binary(), binary()) -> {ok, openapi_pipeline_folder_impl:openapi_pipeline_folder_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_folder(Ctx, Organization, Folder) ->
    get_pipeline_folder(Ctx, Organization, Folder, #{}).

-spec get_pipeline_folder(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline_folder_impl:openapi_pipeline_folder_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_folder(Ctx, Organization, Folder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Folder, "/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve pipeline details for an organization folder
-spec get_pipeline_folder_pipeline(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_pipeline_impl:openapi_pipeline_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_folder_pipeline(Ctx, Organization, Pipeline, Folder) ->
    get_pipeline_folder_pipeline(Ctx, Organization, Pipeline, Folder, #{}).

-spec get_pipeline_folder_pipeline(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline_impl:openapi_pipeline_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_folder_pipeline(Ctx, Organization, Pipeline, Folder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Folder, "/pipelines/", Pipeline, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve queue details for an organization pipeline
-spec get_pipeline_queue(ctx:ctx(), binary(), binary()) -> {ok, [openapi_queue_item_impl:openapi_queue_item_impl()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_queue(Ctx, Organization, Pipeline) ->
    get_pipeline_queue(Ctx, Organization, Pipeline, #{}).

-spec get_pipeline_queue(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_queue_item_impl:openapi_queue_item_impl()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_queue(Ctx, Organization, Pipeline, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/queue"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve run details for an organization pipeline
-spec get_pipeline_run(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_pipeline_run:openapi_pipeline_run(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run(Ctx, Organization, Pipeline, Run) ->
    get_pipeline_run(Ctx, Organization, Pipeline, Run, #{}).

-spec get_pipeline_run(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline_run:openapi_pipeline_run(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run(Ctx, Organization, Pipeline, Run, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get log for a pipeline run
-spec get_pipeline_run_log(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_log(Ctx, Organization, Pipeline, Run) ->
    get_pipeline_run_log(Ctx, Organization, Pipeline, Run, #{}).

-spec get_pipeline_run_log(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_log(Ctx, Organization, Pipeline, Run, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/log"],
    QS = lists:flatten([])++openapi_utils:optional_params(['start', 'download'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve run node details for an organization pipeline
-spec get_pipeline_run_node(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, openapi_pipeline_run_node:openapi_pipeline_run_node(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node(Ctx, Organization, Pipeline, Run, Node) ->
    get_pipeline_run_node(Ctx, Organization, Pipeline, Run, Node, #{}).

-spec get_pipeline_run_node(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline_run_node:openapi_pipeline_run_node(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node(Ctx, Organization, Pipeline, Run, Node, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/nodes/", Node, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve run node details for an organization pipeline
-spec get_pipeline_run_node_step(ctx:ctx(), binary(), binary(), binary(), binary(), binary()) -> {ok, openapi_pipeline_step_impl:openapi_pipeline_step_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node_step(Ctx, Organization, Pipeline, Run, Node, Step) ->
    get_pipeline_run_node_step(Ctx, Organization, Pipeline, Run, Node, Step, #{}).

-spec get_pipeline_run_node_step(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline_step_impl:openapi_pipeline_step_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node_step(Ctx, Organization, Pipeline, Run, Node, Step, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/nodes/", Node, "/steps/", Step, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get log for a pipeline run node step
-spec get_pipeline_run_node_step_log(ctx:ctx(), binary(), binary(), binary(), binary(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node_step_log(Ctx, Organization, Pipeline, Run, Node, Step) ->
    get_pipeline_run_node_step_log(Ctx, Organization, Pipeline, Run, Node, Step, #{}).

-spec get_pipeline_run_node_step_log(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node_step_log(Ctx, Organization, Pipeline, Run, Node, Step, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/nodes/", Node, "/steps/", Step, "/log"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve run node steps details for an organization pipeline
-spec get_pipeline_run_node_steps(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [openapi_pipeline_step_impl:openapi_pipeline_step_impl()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node_steps(Ctx, Organization, Pipeline, Run, Node) ->
    get_pipeline_run_node_steps(Ctx, Organization, Pipeline, Run, Node, #{}).

-spec get_pipeline_run_node_steps(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [openapi_pipeline_step_impl:openapi_pipeline_step_impl()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_node_steps(Ctx, Organization, Pipeline, Run, Node, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/nodes/", Node, "/steps"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve run nodes details for an organization pipeline
-spec get_pipeline_run_nodes(ctx:ctx(), binary(), binary(), binary()) -> {ok, [openapi_pipeline_run_node:openapi_pipeline_run_node()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_nodes(Ctx, Organization, Pipeline, Run) ->
    get_pipeline_run_nodes(Ctx, Organization, Pipeline, Run, #{}).

-spec get_pipeline_run_nodes(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [openapi_pipeline_run_node:openapi_pipeline_run_node()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_run_nodes(Ctx, Organization, Pipeline, Run, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/nodes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve all runs details for an organization pipeline
-spec get_pipeline_runs(ctx:ctx(), binary(), binary()) -> {ok, [openapi_pipeline_run:openapi_pipeline_run()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_runs(Ctx, Organization, Pipeline) ->
    get_pipeline_runs(Ctx, Organization, Pipeline, #{}).

-spec get_pipeline_runs(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_pipeline_run:openapi_pipeline_run()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipeline_runs(Ctx, Organization, Pipeline, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve all pipelines details for an organization
-spec get_pipelines(ctx:ctx(), binary()) -> {ok, [openapi_pipeline:openapi_pipeline()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipelines(Ctx, Organization) ->
    get_pipelines(Ctx, Organization, #{}).

-spec get_pipelines(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_pipeline:openapi_pipeline()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_pipelines(Ctx, Organization, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve SCM details for an organization
-spec get_scm(ctx:ctx(), binary(), binary()) -> {ok, openapi_github_scm:openapi_github_scm(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm(Ctx, Organization, Scm) ->
    get_scm(Ctx, Organization, Scm, #{}).

-spec get_scm(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_github_scm:openapi_github_scm(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm(Ctx, Organization, Scm, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/scm/", Scm, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve SCM organization repositories details for an organization
-spec get_scm_organisation_repositories(ctx:ctx(), binary(), binary(), binary()) -> {ok, [openapi_github_organization:openapi_github_organization()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm_organisation_repositories(Ctx, Organization, Scm, ScmOrganisation) ->
    get_scm_organisation_repositories(Ctx, Organization, Scm, ScmOrganisation, #{}).

-spec get_scm_organisation_repositories(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [openapi_github_organization:openapi_github_organization()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm_organisation_repositories(Ctx, Organization, Scm, ScmOrganisation, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/scm/", Scm, "/organizations/", ScmOrganisation, "/repositories"],
    QS = lists:flatten([])++openapi_utils:optional_params(['credentialId', 'pageSize', 'pageNumber'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve SCM organization repository details for an organization
-spec get_scm_organisation_repository(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [openapi_github_organization:openapi_github_organization()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm_organisation_repository(Ctx, Organization, Scm, ScmOrganisation, Repository) ->
    get_scm_organisation_repository(Ctx, Organization, Scm, ScmOrganisation, Repository, #{}).

-spec get_scm_organisation_repository(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [openapi_github_organization:openapi_github_organization()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm_organisation_repository(Ctx, Organization, Scm, ScmOrganisation, Repository, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/scm/", Scm, "/organizations/", ScmOrganisation, "/repositories/", Repository, ""],
    QS = lists:flatten([])++openapi_utils:optional_params(['credentialId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve SCM organizations details for an organization
-spec get_scm_organisations(ctx:ctx(), binary(), binary()) -> {ok, [openapi_github_organization:openapi_github_organization()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm_organisations(Ctx, Organization, Scm) ->
    get_scm_organisations(Ctx, Organization, Scm, #{}).

-spec get_scm_organisations(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [openapi_github_organization:openapi_github_organization()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_scm_organisations(Ctx, Organization, Scm, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/scm/", Scm, "/organizations"],
    QS = lists:flatten([])++openapi_utils:optional_params(['credentialId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve user details for an organization
-spec get_user(ctx:ctx(), binary(), binary()) -> {ok, openapi_user:openapi_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_user(Ctx, Organization, User) ->
    get_user(Ctx, Organization, User, #{}).

-spec get_user(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_user:openapi_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_user(Ctx, Organization, User, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/users/", User, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve user favorites details for an organization
-spec get_user_favorites(ctx:ctx(), binary()) -> {ok, [openapi_favorite_impl:openapi_favorite_impl()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_user_favorites(Ctx, User) ->
    get_user_favorites(Ctx, User, #{}).

-spec get_user_favorites(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_favorite_impl:openapi_favorite_impl()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_user_favorites(Ctx, User, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/users/", User, "/favorites"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve users details for an organization
-spec get_users(ctx:ctx(), binary()) -> {ok, openapi_user:openapi_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_users(Ctx, Organization) ->
    get_users(Ctx, Organization, #{}).

-spec get_users(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_user:openapi_user(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_users(Ctx, Organization, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/users/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Replay an organization pipeline run
-spec post_pipeline_run(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_queue_item_impl:openapi_queue_item_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_pipeline_run(Ctx, Organization, Pipeline, Run) ->
    post_pipeline_run(Ctx, Organization, Pipeline, Run, #{}).

-spec post_pipeline_run(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_queue_item_impl:openapi_queue_item_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_pipeline_run(Ctx, Organization, Pipeline, Run, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/replay"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Start a build for an organization pipeline
-spec post_pipeline_runs(ctx:ctx(), binary(), binary()) -> {ok, openapi_queue_item_impl:openapi_queue_item_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_pipeline_runs(Ctx, Organization, Pipeline) ->
    post_pipeline_runs(Ctx, Organization, Pipeline, #{}).

-spec post_pipeline_runs(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_queue_item_impl:openapi_queue_item_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_pipeline_runs(Ctx, Organization, Pipeline, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Favorite/unfavorite a pipeline
-spec put_pipeline_favorite(ctx:ctx(), binary(), binary(), boolean()) -> {ok, openapi_favorite_impl:openapi_favorite_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
put_pipeline_favorite(Ctx, Organization, Pipeline, Body) ->
    put_pipeline_favorite(Ctx, Organization, Pipeline, Body, #{}).

-spec put_pipeline_favorite(ctx:ctx(), binary(), binary(), boolean(), maps:map()) -> {ok, openapi_favorite_impl:openapi_favorite_impl(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
put_pipeline_favorite(Ctx, Organization, Pipeline, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/favorite"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Stop a build of an organization pipeline
-spec put_pipeline_run(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_pipeline_run:openapi_pipeline_run(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
put_pipeline_run(Ctx, Organization, Pipeline, Run) ->
    put_pipeline_run(Ctx, Organization, Pipeline, Run, #{}).

-spec put_pipeline_run(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_pipeline_run:openapi_pipeline_run(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
put_pipeline_run(Ctx, Organization, Pipeline, Run, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/blue/rest/organizations/", Organization, "/pipelines/", Pipeline, "/runs/", Run, "/stop"],
    QS = lists:flatten([])++openapi_utils:optional_params(['blocking', 'timeOutInSecs'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Search for any resource details
-spec search(ctx:ctx(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search(Ctx, Q) ->
    search(Ctx, Q, #{}).

-spec search(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/search/"],
    QS = lists:flatten([{<<"q">>, Q}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get classes details
-spec search_classes(ctx:ctx(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_classes(Ctx, Q) ->
    search_classes(Ctx, Q, #{}).

-spec search_classes(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_classes(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/blue/rest/classes/"],
    QS = lists:flatten([{<<"q">>, Q}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


