-module(openapi_remote_access_handler).
-moduledoc """
Exposes the following operation IDs:

- `GET` to `/computer/api/json`, OperationId: `getComputer`:
.
Retrieve computer details

- `GET` to `/api/json`, OperationId: `getJenkins`:
.
Retrieve Jenkins details

- `GET` to `/job/:name/api/json`, OperationId: `getJob`:
.
Retrieve job details

- `GET` to `/job/:name/config.xml`, OperationId: `getJobConfig`:
.
Retrieve job configuration

- `GET` to `/job/:name/lastBuild/api/json`, OperationId: `getJobLastBuild`:
.
Retrieve job&#39;s last build details

- `GET` to `/job/:name/:number/logText/progressiveText`, OperationId: `getJobProgressiveText`:
.
Retrieve job&#39;s build progressive text output

- `GET` to `/queue/api/json`, OperationId: `getQueue`:
.
Retrieve queue details

- `GET` to `/queue/item/:number/api/json`, OperationId: `getQueueItem`:
.
Retrieve queued item details

- `GET` to `/view/:name/api/json`, OperationId: `getView`:
.
Retrieve view details

- `GET` to `/view/:name/config.xml`, OperationId: `getViewConfig`:
.
Retrieve view configuration

- `HEAD` to `/api/json`, OperationId: `headJenkins`:
.
Retrieve Jenkins headers

- `POST` to `/createItem`, OperationId: `postCreateItem`:
.
Create a new job using job configuration, or copied from an existing job

- `POST` to `/createView`, OperationId: `postCreateView`:
.
Create a new view using view configuration

- `POST` to `/job/:name/build`, OperationId: `postJobBuild`:
.
Build a job

- `POST` to `/job/:name/config.xml`, OperationId: `postJobConfig`:
.
Update job configuration

- `POST` to `/job/:name/doDelete`, OperationId: `postJobDelete`:
.
Delete a job

- `POST` to `/job/:name/disable`, OperationId: `postJobDisable`:
.
Disable a job

- `POST` to `/job/:name/enable`, OperationId: `postJobEnable`:
.
Enable a job

- `POST` to `/job/:name/lastBuild/stop`, OperationId: `postJobLastBuildStop`:
.
Stop a job

- `POST` to `/view/:name/config.xml`, OperationId: `postViewConfig`:
.
Update view configuration

""".

-behaviour(cowboy_rest).

-include_lib("kernel/include/logger.hrl").

%% Cowboy REST callbacks
-export([init/2]).
-export([allowed_methods/2]).
-export([content_types_accepted/2]).
-export([content_types_provided/2]).
-export([delete_resource/2]).
-export([is_authorized/2]).
-export([valid_content_headers/2]).
-export([handle_type_accepted/2, handle_type_provided/2]).

-ignore_xref([handle_type_accepted/2, handle_type_provided/2]).

-export_type([class/0, operation_id/0]).

-type class() :: 'remoteAccess'.

-type operation_id() ::
    'getComputer' %% 
    | 'getJenkins' %% 
    | 'getJob' %% 
    | 'getJobConfig' %% 
    | 'getJobLastBuild' %% 
    | 'getJobProgressiveText' %% 
    | 'getQueue' %% 
    | 'getQueueItem' %% 
    | 'getView' %% 
    | 'getViewConfig' %% 
    | 'headJenkins' %% 
    | 'postCreateItem' %% 
    | 'postCreateView' %% 
    | 'postJobBuild' %% 
    | 'postJobConfig' %% 
    | 'postJobDelete' %% 
    | 'postJobDisable' %% 
    | 'postJobEnable' %% 
    | 'postJobLastBuildStop' %% 
    | 'postViewConfig'. %% 


-record(state,
        {operation_id :: operation_id(),
         accept_callback :: openapi_logic_handler:accept_callback(),
         provide_callback :: openapi_logic_handler:provide_callback(),
         api_key_callback :: openapi_logic_handler:api_key_callback(),
         context = #{} :: openapi_logic_handler:context()}).

-type state() :: #state{}.

-spec init(cowboy_req:req(), openapi_router:init_opts()) ->
    {cowboy_rest, cowboy_req:req(), state()}.
init(Req, {Operations, Module}) ->
    Method = cowboy_req:method(Req),
    OperationID = maps:get(Method, Operations, undefined),
    ?LOG_INFO(#{what => "Attempt to process operation",
                method => Method,
                operation_id => OperationID}),
    State = #state{operation_id = OperationID,
                   accept_callback = fun Module:accept_callback/4,
                   provide_callback = fun Module:provide_callback/4,
                   api_key_callback = fun Module:api_key_callback/2},
    {cowboy_rest, Req, State}.

-spec allowed_methods(cowboy_req:req(), state()) ->
    {[binary()], cowboy_req:req(), state()}.
allowed_methods(Req, #state{operation_id = 'getComputer'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getJenkins'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getJob'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getJobConfig'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getJobLastBuild'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getJobProgressiveText'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getQueue'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getQueueItem'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getView'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getViewConfig'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'headJenkins'} = State) ->
    {[<<"HEAD">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postCreateItem'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postCreateView'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postJobBuild'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postJobConfig'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postJobDelete'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postJobDisable'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postJobEnable'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postJobLastBuildStop'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postViewConfig'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, State) ->
    {[], Req, State}.

-spec is_authorized(cowboy_req:req(), state()) ->
    {true | {false, iodata()}, cowboy_req:req(), state()}.
is_authorized(Req0,
              #state{operation_id = 'getComputer' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getJenkins' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getJob' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getJobConfig' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getJobLastBuild' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getJobProgressiveText' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getQueue' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getQueueItem' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getView' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getViewConfig' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'headJenkins' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postCreateItem' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postCreateView' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postJobBuild' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postJobConfig' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postJobDelete' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postJobDisable' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postJobEnable' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postJobLastBuildStop' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postViewConfig' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req, State) ->
    {true, Req, State}.

-spec content_types_accepted(cowboy_req:req(), state()) ->
    {[{binary(), atom()}], cowboy_req:req(), state()}.
content_types_accepted(Req, #state{operation_id = 'getComputer'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getJenkins'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getJob'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getJobConfig'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getJobLastBuild'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getJobProgressiveText'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getQueue'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getQueueItem'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getView'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getViewConfig'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'headJenkins'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postCreateItem'} = State) ->
    {[
      {<<"application/json">>, handle_type_accepted}
     ], Req, State};
content_types_accepted(Req, #state{operation_id = 'postCreateView'} = State) ->
    {[
      {<<"application/json">>, handle_type_accepted}
     ], Req, State};
content_types_accepted(Req, #state{operation_id = 'postJobBuild'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postJobConfig'} = State) ->
    {[
      {<<"application/json">>, handle_type_accepted}
     ], Req, State};
content_types_accepted(Req, #state{operation_id = 'postJobDelete'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postJobDisable'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postJobEnable'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postJobLastBuildStop'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postViewConfig'} = State) ->
    {[
      {<<"application/json">>, handle_type_accepted}
     ], Req, State};
content_types_accepted(Req, State) ->
    {[], Req, State}.

-spec valid_content_headers(cowboy_req:req(), state()) ->
    {boolean(), cowboy_req:req(), state()}.
valid_content_headers(Req, #state{operation_id = 'getComputer'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getJenkins'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getJob'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getJobConfig'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getJobLastBuild'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getJobProgressiveText'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getQueue'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getQueueItem'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getView'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getViewConfig'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'headJenkins'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postCreateItem'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postCreateView'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postJobBuild'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postJobConfig'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postJobDelete'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postJobDisable'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postJobEnable'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postJobLastBuildStop'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postViewConfig'} = State) ->
    {true, Req, State};
valid_content_headers(Req, State) ->
    {false, Req, State}.

-spec content_types_provided(cowboy_req:req(), state()) ->
    {[{binary(), atom()}], cowboy_req:req(), state()}.
content_types_provided(Req, #state{operation_id = 'getComputer'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getJenkins'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getJob'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getJobConfig'} = State) ->
    {[
      {<<"text/xml">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getJobLastBuild'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getJobProgressiveText'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'getQueue'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getQueueItem'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getView'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getViewConfig'} = State) ->
    {[
      {<<"text/xml">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'headJenkins'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'postCreateItem'} = State) ->
    {[
      {<<"*/*">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'postCreateView'} = State) ->
    {[
      {<<"*/*">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'postJobBuild'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'postJobConfig'} = State) ->
    {[
      {<<"*/*">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'postJobDelete'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'postJobDisable'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'postJobEnable'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'postJobLastBuildStop'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'postViewConfig'} = State) ->
    {[
      {<<"*/*">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, State) ->
    {[], Req, State}.

-spec delete_resource(cowboy_req:req(), state()) ->
    {boolean(), cowboy_req:req(), state()}.
delete_resource(Req, State) ->
    {Res, Req1, State1} = handle_type_accepted(Req, State),
    {true =:= Res, Req1, State1}.

-spec handle_type_accepted(cowboy_req:req(), state()) ->
    { openapi_logic_handler:accept_callback_return(), cowboy_req:req(), state()}.
handle_type_accepted(Req, #state{operation_id = OperationID,
                                 accept_callback = Handler,
                                 context = Context} = State) ->
    {Res, Req1, Context1} = Handler(remoteAccess, OperationID, Req, Context),
    {Res, Req1, State#state{context = Context1}}.

-spec handle_type_provided(cowboy_req:req(), state()) ->
    { openapi_logic_handler:provide_callback_return(), cowboy_req:req(), state()}.
handle_type_provided(Req, #state{operation_id = OperationID,
                                 provide_callback = Handler,
                                 context = Context} = State) ->
    {Res, Req1, Context1} = Handler(remoteAccess, OperationID, Req, Context),
    {Res, Req1, State#state{context = Context1}}.
