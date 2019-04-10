-module(openapi_remote_access_api).

-export([get_computer/2, get_computer/3,
         get_jenkins/1, get_jenkins/2,
         get_job/2, get_job/3,
         get_job_config/2, get_job_config/3,
         get_job_last_build/2, get_job_last_build/3,
         get_job_progressive_text/4, get_job_progressive_text/5,
         get_queue/1, get_queue/2,
         get_queue_item/2, get_queue_item/3,
         get_view/2, get_view/3,
         get_view_config/2, get_view_config/3,
         head_jenkins/1, head_jenkins/2,
         post_create_item/3, post_create_item/4,
         post_create_view/3, post_create_view/4,
         post_job_build/3, post_job_build/4,
         post_job_config/3, post_job_config/4,
         post_job_delete/2, post_job_delete/3,
         post_job_disable/2, post_job_disable/3,
         post_job_enable/2, post_job_enable/3,
         post_job_last_build_stop/2, post_job_last_build_stop/3,
         post_view_config/3, post_view_config/4]).

-define(BASE_URL, "/").

%% @doc 
%% Retrieve computer details
-spec get_computer(ctx:ctx(), integer()) -> {ok, openapi_computer_set:openapi_computer_set(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_computer(Ctx, Depth) ->
    get_computer(Ctx, Depth, #{}).

-spec get_computer(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_computer_set:openapi_computer_set(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_computer(Ctx, Depth, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/computer/api/json"],
    QS = lists:flatten([{<<"depth">>, Depth}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve Jenkins details
-spec get_jenkins(ctx:ctx()) -> {ok, openapi_hudson:openapi_hudson(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_jenkins(Ctx) ->
    get_jenkins(Ctx, #{}).

-spec get_jenkins(ctx:ctx(), maps:map()) -> {ok, openapi_hudson:openapi_hudson(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_jenkins(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve job details
-spec get_job(ctx:ctx(), binary()) -> {ok, openapi_free_style_project:openapi_free_style_project(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job(Ctx, Name) ->
    get_job(Ctx, Name, #{}).

-spec get_job(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_free_style_project:openapi_free_style_project(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/job/", Name, "/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve job configuration
-spec get_job_config(ctx:ctx(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_config(Ctx, Name) ->
    get_job_config(Ctx, Name, #{}).

-spec get_job_config(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_config(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/job/", Name, "/config.xml"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve job's last build details
-spec get_job_last_build(ctx:ctx(), binary()) -> {ok, openapi_free_style_build:openapi_free_style_build(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_last_build(Ctx, Name) ->
    get_job_last_build(Ctx, Name, #{}).

-spec get_job_last_build(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_free_style_build:openapi_free_style_build(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_last_build(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/job/", Name, "/lastBuild/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve job's build progressive text output
-spec get_job_progressive_text(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_progressive_text(Ctx, Name, Number, Start) ->
    get_job_progressive_text(Ctx, Name, Number, Start, #{}).

-spec get_job_progressive_text(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_job_progressive_text(Ctx, Name, Number, Start, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/job/", Name, "/", Number, "/logText/progressiveText"],
    QS = lists:flatten([{<<"start">>, Start}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve queue details
-spec get_queue(ctx:ctx()) -> {ok, openapi_queue:openapi_queue(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_queue(Ctx) ->
    get_queue(Ctx, #{}).

-spec get_queue(ctx:ctx(), maps:map()) -> {ok, openapi_queue:openapi_queue(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_queue(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/queue/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve queued item details
-spec get_queue_item(ctx:ctx(), binary()) -> {ok, openapi_queue:openapi_queue(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_queue_item(Ctx, Number) ->
    get_queue_item(Ctx, Number, #{}).

-spec get_queue_item(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_queue:openapi_queue(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_queue_item(Ctx, Number, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/queue/item/", Number, "/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve view details
-spec get_view(ctx:ctx(), binary()) -> {ok, openapi_list_view:openapi_list_view(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_view(Ctx, Name) ->
    get_view(Ctx, Name, #{}).

-spec get_view(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_list_view:openapi_list_view(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_view(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/view/", Name, "/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve view configuration
-spec get_view_config(ctx:ctx(), binary()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_view_config(Ctx, Name) ->
    get_view_config(Ctx, Name, #{}).

-spec get_view_config(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_view_config(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/view/", Name, "/config.xml"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retrieve Jenkins headers
-spec head_jenkins(ctx:ctx()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
head_jenkins(Ctx) ->
    head_jenkins(Ctx, #{}).

-spec head_jenkins(ctx:ctx(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
head_jenkins(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = head,
    Path = ["/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Create a new job using job configuration, or copied from an existing job
-spec post_create_item(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_create_item(Ctx, Name) ->
    post_create_item(Ctx, Name, #{}).

-spec post_create_item(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_create_item(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/createItem"],
    QS = lists:flatten([{<<"name">>, Name}])++openapi_utils:optional_params([, 'from', 'mode'], _OptionalParams),
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb', 'Content-Type'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Create a new view using view configuration
-spec post_create_view(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_create_view(Ctx, Name) ->
    post_create_view(Ctx, Name, #{}).

-spec post_create_view(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_create_view(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/createView"],
    QS = lists:flatten([{<<"name">>, Name}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb', 'Content-Type'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Build a job
-spec post_job_build(ctx:ctx(), binary(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_build(Ctx, Name, Json) ->
    post_job_build(Ctx, Name, Json, #{}).

-spec post_job_build(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_build(Ctx, Name, Json, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/job/", Name, "/build"],
    QS = lists:flatten([{<<"json">>, Json}])++openapi_utils:optional_params([, 'token'], _OptionalParams),
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update job configuration
-spec post_job_config(ctx:ctx(), binary(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_config(Ctx, Name, Body) ->
    post_job_config(Ctx, Name, Body, #{}).

-spec post_job_config(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_config(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/job/", Name, "/config.xml"],
    QS = [],
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Delete a job
-spec post_job_delete(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_delete(Ctx, Name) ->
    post_job_delete(Ctx, Name, #{}).

-spec post_job_delete(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_delete(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/job/", Name, "/doDelete"],
    QS = [],
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Disable a job
-spec post_job_disable(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_disable(Ctx, Name) ->
    post_job_disable(Ctx, Name, #{}).

-spec post_job_disable(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_disable(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/job/", Name, "/disable"],
    QS = [],
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Enable a job
-spec post_job_enable(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_enable(Ctx, Name) ->
    post_job_enable(Ctx, Name, #{}).

-spec post_job_enable(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_enable(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/job/", Name, "/enable"],
    QS = [],
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Stop a job
-spec post_job_last_build_stop(ctx:ctx(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_last_build_stop(Ctx, Name) ->
    post_job_last_build_stop(Ctx, Name, #{}).

-spec post_job_last_build_stop(ctx:ctx(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_job_last_build_stop(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/job/", Name, "/lastBuild/stop"],
    QS = [],
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update view configuration
-spec post_view_config(ctx:ctx(), binary(), binary()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_view_config(Ctx, Name, Body) ->
    post_view_config(Ctx, Name, Body, #{}).

-spec post_view_config(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
post_view_config(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/view/", Name, "/config.xml"],
    QS = [],
    Headers = []++openapi_utils:optional_params(['Jenkins-Crumb'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


