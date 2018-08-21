%% basic handler
-module(openapi_blue_ocean_handler).

%% Cowboy REST callbacks
-export([allowed_methods/2]).
-export([init/3]).
-export([rest_init/2]).
-export([allow_missing_post/2]).
-export([content_types_accepted/2]).
-export([content_types_provided/2]).
-export([delete_resource/2]).
-export([is_authorized/2]).
-export([known_content_type/2]).
-export([malformed_request/2]).
-export([valid_content_headers/2]).
-export([valid_entity_length/2]).

%% Handlers
-export([handle_request_json/2]).

-record(state, {
    operation_id :: openapi_api:operation_id(),
    logic_handler :: atom(),
    validator_state :: jesse_state:state(),
    context=#{} :: #{}
}).

-type state() :: state().

-spec init(TransportName :: atom(), Req :: cowboy_req:req(), Opts :: openapi_router:init_opts()) ->
    {upgrade, protocol, cowboy_rest, Req :: cowboy_req:req(), Opts :: openapi_router:init_opts()}.

init(_Transport, Req, Opts) ->
    {upgrade, protocol, cowboy_rest, Req, Opts}.

-spec rest_init(Req :: cowboy_req:req(), Opts :: openapi_router:init_opts()) ->
    {ok, Req :: cowboy_req:req(), State :: state()}.

rest_init(Req0, {Operations, LogicHandler, ValidatorState}) ->
    {Method, Req} = cowboy_req:method(Req0),
    OperationID = maps:get(Method, Operations, undefined),

    error_logger:info_msg("Attempt to process operation: ~p", [OperationID]),

    State = #state{
        operation_id = OperationID,
        logic_handler = LogicHandler,
        validator_state = ValidatorState
    },
    {ok, Req, State}.

-spec allowed_methods(Req :: cowboy_req:req(), State :: state()) ->
    {Value :: [binary()], Req :: cowboy_req:req(), State :: state()}.


allowed_methods(
    Req,
    State = #state{
        operation_id = 'DeletePipelineQueueItem'
    }
) ->
    {[<<"DELETE">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetAuthenticatedUser'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetClasses'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetJsonWebKey'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetJsonWebToken'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetOrganisation'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetOrganisations'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipeline'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineActivities'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineBranch'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineBranchRun'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineBranches'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineFolder'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineFolderPipeline'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineQueue'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRun'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRunLog'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRunNode'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRunNodeStep'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRunNodeStepLog'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRunNodeSteps'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRunNodes'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelineRuns'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetPipelines'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetSCM'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetSCMOrganisationRepositories'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetSCMOrganisationRepository'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetSCMOrganisations'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetUser'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetUserFavorites'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'GetUsers'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'PostPipelineRun'
    }
) ->
    {[<<"POST">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'PostPipelineRuns'
    }
) ->
    {[<<"POST">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'PutPipelineFavorite'
    }
) ->
    {[<<"PUT">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'PutPipelineRun'
    }
) ->
    {[<<"PUT">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'Search'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(
    Req,
    State = #state{
        operation_id = 'SearchClasses'
    }
) ->
    {[<<"GET">>], Req, State};

allowed_methods(Req, State) ->
    {[], Req, State}.

-spec is_authorized(Req :: cowboy_req:req(), State :: state()) ->
    {
        Value :: true | {false, AuthHeader :: iodata()},
        Req :: cowboy_req:req(),
        State :: state()
    }.
is_authorized(
    Req0,
    State = #state{
        operation_id = 'DeletePipelineQueueItem' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetAuthenticatedUser' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetClasses' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetOrganisation' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetOrganisations' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipeline' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineActivities' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineBranch' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineBranchRun' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineBranches' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineFolder' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineFolderPipeline' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineQueue' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRun' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunLog' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNode' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodeStep' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodeStepLog' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodeSteps' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodes' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRuns' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetPipelines' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetSCM' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetSCMOrganisationRepositories' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetSCMOrganisationRepository' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetSCMOrganisations' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetUser' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetUserFavorites' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'GetUsers' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'PostPipelineRun' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'PostPipelineRuns' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'PutPipelineFavorite' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'PutPipelineRun' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'Search' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(
    Req0,
    State = #state{
        operation_id = 'SearchClasses' = OperationID,
        logic_handler = LogicHandler
    }
) ->
is_authorized(Req, State) ->
    {true, Req, State}.

-spec content_types_accepted(Req :: cowboy_req:req(), State :: state()) ->
    {
        Value :: [{binary(), AcceptResource :: atom()}],
        Req :: cowboy_req:req(),
        State :: state()
    }.

content_types_accepted(Req, State) ->
    {[
        {<<"application/json">>, handle_request_json}
    ], Req, State}.

-spec valid_content_headers(Req :: cowboy_req:req(), State :: state()) ->
    {Value :: boolean(), Req :: cowboy_req:req(), State :: state()}.

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'DeletePipelineQueueItem'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetAuthenticatedUser'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetClasses'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetJsonWebKey'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetJsonWebToken'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetOrganisation'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetOrganisations'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipeline'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineActivities'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineBranch'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineBranchRun'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineBranches'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineFolder'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineFolderPipeline'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineQueue'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRun'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunLog'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNode'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodeStep'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodeStepLog'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodeSteps'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRunNodes'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelineRuns'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetPipelines'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetSCM'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetSCMOrganisationRepositories'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetSCMOrganisationRepository'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetSCMOrganisations'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetUser'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetUserFavorites'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'GetUsers'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'PostPipelineRun'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'PostPipelineRuns'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'PutPipelineFavorite'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'PutPipelineRun'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'Search'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(
    Req0,
    State = #state{
        operation_id = 'SearchClasses'
    }
) ->
    Headers = [],
    {Result, Req} = validate_headers(Headers, Req0),
    {Result, Req, State};

valid_content_headers(Req, State) ->
    {false, Req, State}.

-spec content_types_provided(Req :: cowboy_req:req(), State :: state()) ->
    {
        Value :: [{binary(), ProvideResource :: atom()}],
        Req :: cowboy_req:req(),
        State :: state()
    }.

content_types_provided(Req, State) ->
    {[
        {<<"application/json">>, handle_request_json}
    ], Req, State}.

-spec malformed_request(Req :: cowboy_req:req(), State :: state()) ->
    {Value :: false, Req :: cowboy_req:req(), State :: state()}.

malformed_request(Req, State) ->
    {false, Req, State}.

-spec allow_missing_post(Req :: cowboy_req:req(), State :: state()) ->
    {Value :: false, Req :: cowboy_req:req(), State :: state()}.

allow_missing_post(Req, State) ->
    {false, Req, State}.

-spec delete_resource(Req :: cowboy_req:req(), State :: state()) ->
    processed_response().

delete_resource(Req, State) ->
    handle_request_json(Req, State).

-spec known_content_type(Req :: cowboy_req:req(), State :: state()) ->
    {Value :: true, Req :: cowboy_req:req(), State :: state()}.

known_content_type(Req, State) ->
    {true, Req, State}.

-spec valid_entity_length(Req :: cowboy_req:req(), State :: state()) ->
    {Value :: true, Req :: cowboy_req:req(), State :: state()}.

valid_entity_length(Req, State) ->
    %% @TODO check the length
    {true, Req, State}.

%%%%

-type result_ok() :: {
    ok,
    {Status :: cowboy:http_status(), Headers :: cowboy:http_headers(), Body :: iodata()}
}.

-type result_error() :: {error, Reason :: any()}.

-type processed_response() :: {halt, cowboy_req:req(), state()}.

-spec process_response(result_ok() | result_error(), cowboy_req:req(), state()) ->
    processed_response().

process_response(Response, Req0, State = #state{operation_id = OperationID}) ->
    case Response of
        {ok, {Code, Headers, Body}} ->
            {ok, Req} = cowboy_req:reply(Code, Headers, Body, Req0),
            {halt, Req, State};
        {error, Message} ->
            error_logger:error_msg("Unable to process request for ~p: ~p", [OperationID, Message]),

            {ok, Req} = cowboy_req:reply(400, Req0),
            {halt, Req, State}
    end.

-spec handle_request_json(cowboy_req:req(), state()) -> {halt, cowboy_req:req(), state()}.

handle_request_json(
    Req0,
    State = #state{
        operation_id = OperationID,
        logic_handler = LogicHandler,
        validator_state = ValidatorState,
        context = Context
    }
) ->
    case openapi_api:populate_request(OperationID, Req0, ValidatorState) of
        {ok, Populated, Req1} ->
            {Code, Headers, Body} = openapi_logic_handler:handle_request(
                LogicHandler,
                OperationID,
                Populated,
                Context
            ),
            _ = openapi_api:validate_response(
                OperationID,
                Code,
                Body,
                ValidatorState
            ),
            PreparedBody = jsx:encode(Body),
            Response = {ok, {Code, Headers, PreparedBody}},
            process_response(Response, Req1, State);
        {error, Reason, Req1} ->
            process_response({error, Reason}, Req1, State)
    end.

validate_headers(_, Req) -> {true, Req}.
