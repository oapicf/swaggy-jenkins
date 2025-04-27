-module(openapi_blue_ocean_handler).
-moduledoc """
Exposes the following operation IDs:

- `DELETE` to `/blue/rest/organizations/:organization/pipelines/:pipeline/queue/:queue`, OperationId: `deletePipelineQueueItem`:
.
Delete queue item from an organization pipeline queue

- `GET` to `/blue/rest/organizations/:organization/user/`, OperationId: `getAuthenticatedUser`:
.
Retrieve authenticated user details for an organization

- `GET` to `/blue/rest/classes/:class`, OperationId: `getClasses`:
.
Get a list of class names supported by a given class

- `GET` to `/jwt-auth/jwks/:key`, OperationId: `getJsonWebKey`:
.
Retrieve JSON Web Key

- `GET` to `/jwt-auth/token`, OperationId: `getJsonWebToken`:
.
Retrieve JSON Web Token

- `GET` to `/blue/rest/organizations/:organization`, OperationId: `getOrganisation`:
.
Retrieve organization details

- `GET` to `/blue/rest/organizations/`, OperationId: `getOrganisations`:
.
Retrieve all organizations details

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline`, OperationId: `getPipeline`:
.
Retrieve pipeline details for an organization

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/activities`, OperationId: `getPipelineActivities`:
.
Retrieve all activities details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/`, OperationId: `getPipelineBranch`:
.
Retrieve branch details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/branches/:branch/runs/:run`, OperationId: `getPipelineBranchRun`:
.
Retrieve branch run details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/branches`, OperationId: `getPipelineBranches`:
.
Retrieve all branches details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:folder/`, OperationId: `getPipelineFolder`:
.
Retrieve pipeline folder for an organization

- `GET` to `/blue/rest/organizations/:organization/pipelines/:folder/pipelines/:pipeline`, OperationId: `getPipelineFolderPipeline`:
.
Retrieve pipeline details for an organization folder

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/queue`, OperationId: `getPipelineQueue`:
.
Retrieve queue details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run`, OperationId: `getPipelineRun`:
.
Retrieve run details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/log`, OperationId: `getPipelineRunLog`:
.
Get log for a pipeline run

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node`, OperationId: `getPipelineRunNode`:
.
Retrieve run node details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step`, OperationId: `getPipelineRunNodeStep`:
.
Retrieve run node details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps/:step/log`, OperationId: `getPipelineRunNodeStepLog`:
.
Get log for a pipeline run node step

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes/:node/steps`, OperationId: `getPipelineRunNodeSteps`:
.
Retrieve run node steps details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/nodes`, OperationId: `getPipelineRunNodes`:
.
Retrieve run nodes details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs`, OperationId: `getPipelineRuns`:
.
Retrieve all runs details for an organization pipeline

- `GET` to `/blue/rest/organizations/:organization/pipelines/`, OperationId: `getPipelines`:
.
Retrieve all pipelines details for an organization

- `GET` to `/blue/rest/organizations/:organization/scm/:scm`, OperationId: `getSCM`:
.
Retrieve SCM details for an organization

- `GET` to `/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories`, OperationId: `getSCMOrganisationRepositories`:
.
Retrieve SCM organization repositories details for an organization

- `GET` to `/blue/rest/organizations/:organization/scm/:scm/organizations/:scmOrganisation/repositories/:repository`, OperationId: `getSCMOrganisationRepository`:
.
Retrieve SCM organization repository details for an organization

- `GET` to `/blue/rest/organizations/:organization/scm/:scm/organizations`, OperationId: `getSCMOrganisations`:
.
Retrieve SCM organizations details for an organization

- `GET` to `/blue/rest/organizations/:organization/users/:user`, OperationId: `getUser`:
.
Retrieve user details for an organization

- `GET` to `/blue/rest/users/:user/favorites`, OperationId: `getUserFavorites`:
.
Retrieve user favorites details for an organization

- `GET` to `/blue/rest/organizations/:organization/users/`, OperationId: `getUsers`:
.
Retrieve users details for an organization

- `POST` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/replay`, OperationId: `postPipelineRun`:
.
Replay an organization pipeline run

- `POST` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs`, OperationId: `postPipelineRuns`:
.
Start a build for an organization pipeline

- `PUT` to `/blue/rest/organizations/:organization/pipelines/:pipeline/favorite`, OperationId: `putPipelineFavorite`:
.
Favorite/unfavorite a pipeline

- `PUT` to `/blue/rest/organizations/:organization/pipelines/:pipeline/runs/:run/stop`, OperationId: `putPipelineRun`:
.
Stop a build of an organization pipeline

- `GET` to `/blue/rest/search/`, OperationId: `search`:
.
Search for any resource details

- `GET` to `/blue/rest/classes/`, OperationId: `searchClasses`:
.
Get classes details

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

-type class() :: 'blueOcean'.

-type operation_id() ::
    'deletePipelineQueueItem' %% 
    | 'getAuthenticatedUser' %% 
    | 'getClasses' %% 
    | 'getJsonWebKey' %% 
    | 'getJsonWebToken' %% 
    | 'getOrganisation' %% 
    | 'getOrganisations' %% 
    | 'getPipeline' %% 
    | 'getPipelineActivities' %% 
    | 'getPipelineBranch' %% 
    | 'getPipelineBranchRun' %% 
    | 'getPipelineBranches' %% 
    | 'getPipelineFolder' %% 
    | 'getPipelineFolderPipeline' %% 
    | 'getPipelineQueue' %% 
    | 'getPipelineRun' %% 
    | 'getPipelineRunLog' %% 
    | 'getPipelineRunNode' %% 
    | 'getPipelineRunNodeStep' %% 
    | 'getPipelineRunNodeStepLog' %% 
    | 'getPipelineRunNodeSteps' %% 
    | 'getPipelineRunNodes' %% 
    | 'getPipelineRuns' %% 
    | 'getPipelines' %% 
    | 'getSCM' %% 
    | 'getSCMOrganisationRepositories' %% 
    | 'getSCMOrganisationRepository' %% 
    | 'getSCMOrganisations' %% 
    | 'getUser' %% 
    | 'getUserFavorites' %% 
    | 'getUsers' %% 
    | 'postPipelineRun' %% 
    | 'postPipelineRuns' %% 
    | 'putPipelineFavorite' %% 
    | 'putPipelineRun' %% 
    | 'search' %% 
    | 'searchClasses'. %% 


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
allowed_methods(Req, #state{operation_id = 'deletePipelineQueueItem'} = State) ->
    {[<<"DELETE">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getAuthenticatedUser'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getClasses'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getJsonWebKey'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getJsonWebToken'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getOrganisation'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getOrganisations'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipeline'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineActivities'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineBranch'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineBranchRun'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineBranches'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineFolder'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineFolderPipeline'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineQueue'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRun'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRunLog'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRunNode'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRunNodeStep'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRunNodeStepLog'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRunNodeSteps'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRunNodes'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelineRuns'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getPipelines'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getSCM'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getSCMOrganisationRepositories'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getSCMOrganisationRepository'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getSCMOrganisations'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getUser'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getUserFavorites'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'getUsers'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postPipelineRun'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'postPipelineRuns'} = State) ->
    {[<<"POST">>], Req, State};
allowed_methods(Req, #state{operation_id = 'putPipelineFavorite'} = State) ->
    {[<<"PUT">>], Req, State};
allowed_methods(Req, #state{operation_id = 'putPipelineRun'} = State) ->
    {[<<"PUT">>], Req, State};
allowed_methods(Req, #state{operation_id = 'search'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, #state{operation_id = 'searchClasses'} = State) ->
    {[<<"GET">>], Req, State};
allowed_methods(Req, State) ->
    {[], Req, State}.

-spec is_authorized(cowboy_req:req(), state()) ->
    {true | {false, iodata()}, cowboy_req:req(), state()}.
is_authorized(Req0,
              #state{operation_id = 'deletePipelineQueueItem' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getAuthenticatedUser' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getClasses' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getOrganisation' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getOrganisations' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipeline' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineActivities' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineBranch' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineBranchRun' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineBranches' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineFolder' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineFolderPipeline' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineQueue' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRun' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRunLog' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRunNode' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRunNodeStep' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRunNodeStepLog' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRunNodeSteps' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRunNodes' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelineRuns' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getPipelines' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getSCM' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getSCMOrganisationRepositories' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getSCMOrganisationRepository' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getSCMOrganisations' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getUser' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getUserFavorites' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'getUsers' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postPipelineRun' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'postPipelineRuns' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'putPipelineFavorite' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'putPipelineRun' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'search' = OperationID,
                     api_key_callback = Handler} = State) ->
    case openapi_auth:authorize_api_key(Handler, OperationID, header, <<"authorization">>, Req0) of
        {true, Context, Req} ->
            {true, Req, State#state{context = Context}};
        {false, AuthHeader, Req} ->
            {{false, AuthHeader}, Req, State}
    end;
is_authorized(Req0,
              #state{operation_id = 'searchClasses' = OperationID,
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
content_types_accepted(Req, #state{operation_id = 'deletePipelineQueueItem'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getAuthenticatedUser'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getClasses'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getJsonWebKey'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getJsonWebToken'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getOrganisation'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getOrganisations'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipeline'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineActivities'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineBranch'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineBranchRun'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineBranches'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineFolder'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineFolderPipeline'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineQueue'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRun'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRunLog'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRunNode'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRunNodeStep'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRunNodeStepLog'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRunNodeSteps'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRunNodes'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelineRuns'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getPipelines'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getSCM'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getSCMOrganisationRepositories'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getSCMOrganisationRepository'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getSCMOrganisations'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getUser'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getUserFavorites'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'getUsers'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postPipelineRun'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'postPipelineRuns'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'putPipelineFavorite'} = State) ->
    {[
      {<<"application/json">>, handle_type_accepted}
     ], Req, State};
content_types_accepted(Req, #state{operation_id = 'putPipelineRun'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'search'} = State) ->
    {[], Req, State};
content_types_accepted(Req, #state{operation_id = 'searchClasses'} = State) ->
    {[], Req, State};
content_types_accepted(Req, State) ->
    {[], Req, State}.

-spec valid_content_headers(cowboy_req:req(), state()) ->
    {boolean(), cowboy_req:req(), state()}.
valid_content_headers(Req, #state{operation_id = 'deletePipelineQueueItem'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getAuthenticatedUser'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getClasses'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getJsonWebKey'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getJsonWebToken'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getOrganisation'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getOrganisations'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipeline'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineActivities'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineBranch'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineBranchRun'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineBranches'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineFolder'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineFolderPipeline'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineQueue'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRun'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRunLog'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRunNode'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRunNodeStep'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRunNodeStepLog'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRunNodeSteps'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRunNodes'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelineRuns'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getPipelines'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getSCM'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getSCMOrganisationRepositories'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getSCMOrganisationRepository'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getSCMOrganisations'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getUser'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getUserFavorites'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'getUsers'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postPipelineRun'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'postPipelineRuns'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'putPipelineFavorite'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'putPipelineRun'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'search'} = State) ->
    {true, Req, State};
valid_content_headers(Req, #state{operation_id = 'searchClasses'} = State) ->
    {true, Req, State};
valid_content_headers(Req, State) ->
    {false, Req, State}.

-spec content_types_provided(cowboy_req:req(), state()) ->
    {[{binary(), atom()}], cowboy_req:req(), state()}.
content_types_provided(Req, #state{operation_id = 'deletePipelineQueueItem'} = State) ->
    {[], Req, State};
content_types_provided(Req, #state{operation_id = 'getAuthenticatedUser'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getClasses'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getJsonWebKey'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getJsonWebToken'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getOrganisation'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getOrganisations'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipeline'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineActivities'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineBranch'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineBranchRun'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineBranches'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineFolder'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineFolderPipeline'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineQueue'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRun'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRunLog'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRunNode'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRunNodeStep'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRunNodeStepLog'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRunNodeSteps'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRunNodes'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelineRuns'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getPipelines'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getSCM'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getSCMOrganisationRepositories'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getSCMOrganisationRepository'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getSCMOrganisations'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getUser'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getUserFavorites'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'getUsers'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'postPipelineRun'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'postPipelineRuns'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'putPipelineFavorite'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'putPipelineRun'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'search'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
     ], Req, State};
content_types_provided(Req, #state{operation_id = 'searchClasses'} = State) ->
    {[
      {<<"application/json">>, handle_type_provided}
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
    {Res, Req1, Context1} = Handler(blueOcean, OperationID, Req, Context),
    {Res, Req1, State#state{context = Context1}}.

-spec handle_type_provided(cowboy_req:req(), state()) ->
    { openapi_logic_handler:provide_callback_return(), cowboy_req:req(), state()}.
handle_type_provided(Req, #state{operation_id = OperationID,
                                 provide_callback = Handler,
                                 context = Context} = State) ->
    {Res, Req1, Context1} = Handler(blueOcean, OperationID, Req, Context),
    {Res, Req1, State#state{context = Context1}}.
