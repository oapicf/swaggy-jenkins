-module(openapi_base_remote_access_api).

-export([get_crumb/1, get_crumb/2]).

-define(BASE_URL, "/").

%% @doc 
%% Retrieve CSRF protection token
-spec get_crumb(ctx:ctx()) -> {ok, openapi_default_crumb_issuer:openapi_default_crumb_issuer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_crumb(Ctx) ->
    get_crumb(Ctx, #{}).

-spec get_crumb(ctx:ctx(), maps:map()) -> {ok, openapi_default_crumb_issuer:openapi_default_crumb_issuer(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_crumb(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/crumbIssuer/api/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


