-module(openapi_api).

-export([ get_computer/1
        , get_jenkins/0
        , get_job/1
        , get_job_config/1
        , get_job_last_build/1
        , get_job_progressive_text/3
        , get_queue/0
        , get_queue_item/1
        , get_view/1
        , get_view_config/1
        , head_jenkins/0
        , post_create_item/2
        , post_create_view/2
        , post_job_build/2
        , post_job_config/2
        , post_job_delete/1
        , post_job_disable/1
        , post_job_enable/1
        , post_job_last_build_stop/1
        , post_view_config/2
        ]).

-define(BASE_URL, "").

%% @doc 
%% Retrieve computer details
-spec get_computer(integer()) ->
  openapi_utils:response().
get_computer(Depth) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/computer/api/json"],
  QueryString = [<<"depth=">>, Depth, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% Retrieve Jenkins details
-spec get_jenkins() ->
  openapi_utils:response().
get_jenkins() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/api/json"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve job details
-spec get_job(binary()) ->
  openapi_utils:response().
get_job(Name) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/api/json"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve job configuration
-spec get_job_config(binary()) ->
  openapi_utils:response().
get_job_config(Name) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/config.xml"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve job's last build details
-spec get_job_last_build(binary()) ->
  openapi_utils:response().
get_job_last_build(Name) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/lastBuild/api/json"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve job's build progressive text output
-spec get_job_progressive_text(binary(), binary(), binary()) ->
  openapi_utils:response().
get_job_progressive_text(Name, Number, Start) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/", Number, "/logText/progressiveText"],
  QueryString = [<<"start=">>, Start, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString]).

%% @doc 
%% Retrieve queue details
-spec get_queue() ->
  openapi_utils:response().
get_queue() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/queue/api/json"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve queued item details
-spec get_queue_item(binary()) ->
  openapi_utils:response().
get_queue_item(Number) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/queue/item/", Number, "/api/json"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve view details
-spec get_view(binary()) ->
  openapi_utils:response().
get_view(Name) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/view/", Name, "/api/json"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve view configuration
-spec get_view_config(binary()) ->
  openapi_utils:response().
get_view_config(Name) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/view/", Name, "/config.xml"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Retrieve Jenkins headers
-spec head_jenkins() ->
  openapi_utils:response().
head_jenkins() ->
  Method      = head,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/api/json"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Create a new job using job configuration, or copied from an existing job
-spec post_create_item(binary()) ->
  openapi_utils:response().
post_create_item(Name) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/createItem"],
  Body        = Body,
  ContentType = hd(["application/json"]),
  QueryString = [<<"name=">>, Name, <<"&">>, <<"from=">>, From, <<"&">>, <<"mode=">>, Mode, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc 
%% Create a new view using view configuration
-spec post_create_view(binary()) ->
  openapi_utils:response().
post_create_view(Name) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/createView"],
  Body        = Body,
  ContentType = hd(["application/json"]),
  QueryString = [<<"name=">>, Name, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc 
%% Build a job
-spec post_job_build(binary(), binary()) ->
  openapi_utils:response().
post_job_build(Name, Json) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/build"],
  Body        = [],
  ContentType = "text/plain",
  QueryString = [<<"json=">>, Json, <<"&">>, <<"token=">>, Token, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc 
%% Update job configuration
-spec post_job_config(binary(), binary()) ->
  openapi_utils:response().
post_job_config(Name, Body) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/config.xml"],
  Body        = Body,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% Delete a job
-spec post_job_delete(binary()) ->
  openapi_utils:response().
post_job_delete(Name) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/doDelete"],
  Body        = [],
  ContentType = "text/plain",

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% Disable a job
-spec post_job_disable(binary()) ->
  openapi_utils:response().
post_job_disable(Name) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/disable"],
  Body        = [],
  ContentType = "text/plain",

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% Enable a job
-spec post_job_enable(binary()) ->
  openapi_utils:response().
post_job_enable(Name) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/enable"],
  Body        = [],
  ContentType = "text/plain",

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% Stop a job
-spec post_job_last_build_stop(binary()) ->
  openapi_utils:response().
post_job_last_build_stop(Name) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/job/", Name, "/lastBuild/stop"],
  Body        = [],
  ContentType = "text/plain",

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

%% @doc 
%% Update view configuration
-spec post_view_config(binary(), binary()) ->
  openapi_utils:response().
post_view_config(Name, Body) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/view/", Name, "/config.xml"],
  Body        = Body,
  ContentType = hd(["application/json"]),

  openapi_utils:request(Method, [Host, ?BASE_URL, Path], jsx:encode(Body), ContentType).

