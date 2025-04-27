-module(openapi_api).
-moduledoc """
This module offers an API for JSON schema validation, using `jesse` under the hood.

If validation is desired, a jesse state can be loaded using `prepare_validator/1`,
and request and response can be validated using `populate_request/3`
and `validate_response/4` respectively.

For example, the user-defined `Module:accept_callback/4` can be implemented as follows:
```
-spec accept_callback(
        Class :: openapi_api:class(),
        OperationID :: openapi_api:operation_id(),
        Req :: cowboy_req:req(),
        Context :: openapi_logic_handler:context()) ->
    {openapi_logic_handler:accept_callback_return(),
     cowboy_req:req(),
     openapi_logic_handler:context()}.
accept_callback(Class, OperationID, Req0, Context0) ->
    ValidatorState = openapi_api:prepare_validator(),
    case openapi_api:populate_request(OperationID, Req0, ValidatorState) of
        {ok, Model, Req1} ->
            Context1 = maps:merge(Context0, Model),
            case do_accept_callback(Class, OperationID, Req1, Context1) of
                {false, Req2, Context2} ->
                    {false, Req2, Context2};
                {{true, Code, Body}, Req2, Context2} ->
                    case validate_response(OperationID, Code, Body, ValidatorState) of
                        ok ->
                            process_response({ok, Code, Body}, Req2, Context2);
                        {error, Reason} ->
                            process_response({error, Reason}, Req2, Context2)
                    end
            end;
        {error, Reason, Req1} ->
            process_response({error, Reason}, Req1, Context0)
    end.
```
""".

-export([prepare_validator/0, prepare_validator/1, prepare_validator/2]).
-export([populate_request/3, validate_response/4]).

-ignore_xref([populate_request/3, validate_response/4]).
-ignore_xref([prepare_validator/0, prepare_validator/1, prepare_validator/2]).

-type class() ::
    'base'
    | 'blueOcean'
    | 'remoteAccess'.


-type operation_id() ::
    'getCrumb' | %% 
    'deletePipelineQueueItem' | %% 
    'getAuthenticatedUser' | %% 
    'getClasses' | %% 
    'getJsonWebKey' | %% 
    'getJsonWebToken' | %% 
    'getOrganisation' | %% 
    'getOrganisations' | %% 
    'getPipeline' | %% 
    'getPipelineActivities' | %% 
    'getPipelineBranch' | %% 
    'getPipelineBranchRun' | %% 
    'getPipelineBranches' | %% 
    'getPipelineFolder' | %% 
    'getPipelineFolderPipeline' | %% 
    'getPipelineQueue' | %% 
    'getPipelineRun' | %% 
    'getPipelineRunLog' | %% 
    'getPipelineRunNode' | %% 
    'getPipelineRunNodeStep' | %% 
    'getPipelineRunNodeStepLog' | %% 
    'getPipelineRunNodeSteps' | %% 
    'getPipelineRunNodes' | %% 
    'getPipelineRuns' | %% 
    'getPipelines' | %% 
    'getSCM' | %% 
    'getSCMOrganisationRepositories' | %% 
    'getSCMOrganisationRepository' | %% 
    'getSCMOrganisations' | %% 
    'getUser' | %% 
    'getUserFavorites' | %% 
    'getUsers' | %% 
    'postPipelineRun' | %% 
    'postPipelineRuns' | %% 
    'putPipelineFavorite' | %% 
    'putPipelineRun' | %% 
    'search' | %% 
    'searchClasses' | %% 
    'getComputer' | %% 
    'getJenkins' | %% 
    'getJob' | %% 
    'getJobConfig' | %% 
    'getJobLastBuild' | %% 
    'getJobProgressiveText' | %% 
    'getQueue' | %% 
    'getQueueItem' | %% 
    'getView' | %% 
    'getViewConfig' | %% 
    'headJenkins' | %% 
    'postCreateItem' | %% 
    'postCreateView' | %% 
    'postJobBuild' | %% 
    'postJobConfig' | %% 
    'postJobDelete' | %% 
    'postJobDisable' | %% 
    'postJobEnable' | %% 
    'postJobLastBuildStop' | %% 
    'postViewConfig' | %% 
    {error, unknown_operation}.

-type request_param() :: atom().

-export_type([class/0, operation_id/0]).

-dialyzer({nowarn_function, [validate_response_body/4]}).

-type rule() ::
    {type, binary} |
    {type, byte} |
    {type, integer} |
    {type, float} |
    {type, boolean} |
    {type, date} |
    {type, datetime} |
    {enum, [atom()]} |
    {max, Max :: number()} |
    {exclusive_max, Max :: number()} |
    {min, Min :: number()} |
    {exclusive_min, Min :: number()} |
    {max_length, MaxLength :: integer()} |
    {min_length, MaxLength :: integer()} |
    {pattern, Pattern :: string()} |
    {schema, object | list, binary()} |
    schema |
    required |
    not_required.

-doc #{equiv => prepare_validator/2}.
-spec prepare_validator() -> jesse_state:state().
prepare_validator() ->
    prepare_validator(<<"http://json-schema.org/draft-06/schema#">>).

-doc #{equiv => prepare_validator/2}.
-spec prepare_validator(binary()) -> jesse_state:state().
prepare_validator(SchemaVer) ->
    prepare_validator(get_openapi_path(), SchemaVer).

-doc """
Loads the JSON schema and the desired validation draft into a `t:jesse_state:state/0`.
""".
-spec prepare_validator(file:name_all(), binary()) -> jesse_state:state().
prepare_validator(OpenApiPath, SchemaVer) ->
    {ok, FileContents} = file:read_file(OpenApiPath),
    R = json:decode(FileContents),
    jesse_state:new(R, [{default_schema_ver, SchemaVer}]).

-doc """
Automatically loads the entire body from the cowboy req
and validates the JSON body against the schema.
""".
-spec populate_request(
        OperationID :: operation_id(),
        Req :: cowboy_req:req(),
        ValidatorState :: jesse_state:state()) ->
    {ok, Model :: #{}, Req :: cowboy_req:req()} |
    {error, Reason :: any(), Req :: cowboy_req:req()}.
populate_request(OperationID, Req, ValidatorState) ->
    Params = request_params(OperationID),
    populate_request_params(OperationID, Params, Req, ValidatorState, #{}).

-doc """
Validates that the provided `Code` and `Body` comply with the `ValidatorState` schema
for the `OperationID` operation.
""".
-spec validate_response(
        OperationID :: operation_id(),
        Code :: 200..599,
        Body :: jesse:json_term(),
        ValidatorState :: jesse_state:state()) ->
    ok | {ok, term()} | [ok | {ok, term()}] | no_return().
validate_response('getCrumb', 200, Body, ValidatorState) ->
    validate_response_body('DefaultCrumbIssuer', 'DefaultCrumbIssuer', Body, ValidatorState);
validate_response('getCrumb', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getCrumb', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('deletePipelineQueueItem', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('deletePipelineQueueItem', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('deletePipelineQueueItem', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getAuthenticatedUser', 200, Body, ValidatorState) ->
    validate_response_body('User', 'User', Body, ValidatorState);
validate_response('getAuthenticatedUser', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getAuthenticatedUser', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getClasses', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('getClasses', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getClasses', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJsonWebKey', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('getJsonWebKey', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJsonWebKey', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJsonWebToken', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('getJsonWebToken', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJsonWebToken', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getOrganisation', 200, Body, ValidatorState) ->
    validate_response_body('Organisation', 'Organisation', Body, ValidatorState);
validate_response('getOrganisation', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getOrganisation', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getOrganisation', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getOrganisations', 200, Body, ValidatorState) ->
    validate_response_body('list', 'Organisation', Body, ValidatorState);
validate_response('getOrganisations', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getOrganisations', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipeline', 200, Body, ValidatorState) ->
    validate_response_body('Pipeline', 'Pipeline', Body, ValidatorState);
validate_response('getPipeline', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipeline', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipeline', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineActivities', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineActivity', Body, ValidatorState);
validate_response('getPipelineActivities', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineActivities', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineBranch', 200, Body, ValidatorState) ->
    validate_response_body('BranchImpl', 'BranchImpl', Body, ValidatorState);
validate_response('getPipelineBranch', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineBranch', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineBranchRun', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRun', 'PipelineRun', Body, ValidatorState);
validate_response('getPipelineBranchRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineBranchRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineBranches', 200, Body, ValidatorState) ->
    validate_response_body('MultibranchPipeline', 'MultibranchPipeline', Body, ValidatorState);
validate_response('getPipelineBranches', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineBranches', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineFolder', 200, Body, ValidatorState) ->
    validate_response_body('PipelineFolderImpl', 'PipelineFolderImpl', Body, ValidatorState);
validate_response('getPipelineFolder', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineFolder', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineFolderPipeline', 200, Body, ValidatorState) ->
    validate_response_body('PipelineImpl', 'PipelineImpl', Body, ValidatorState);
validate_response('getPipelineFolderPipeline', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineFolderPipeline', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineQueue', 200, Body, ValidatorState) ->
    validate_response_body('list', 'QueueItemImpl', Body, ValidatorState);
validate_response('getPipelineQueue', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineQueue', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRun', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRun', 'PipelineRun', Body, ValidatorState);
validate_response('getPipelineRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunLog', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('getPipelineRunLog', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunLog', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNode', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRunNode', 'PipelineRunNode', Body, ValidatorState);
validate_response('getPipelineRunNode', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNode', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodeStep', 200, Body, ValidatorState) ->
    validate_response_body('PipelineStepImpl', 'PipelineStepImpl', Body, ValidatorState);
validate_response('getPipelineRunNodeStep', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodeStep', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodeStepLog', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('getPipelineRunNodeStepLog', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodeStepLog', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodeSteps', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineStepImpl', Body, ValidatorState);
validate_response('getPipelineRunNodeSteps', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodeSteps', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodes', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineRunNode', Body, ValidatorState);
validate_response('getPipelineRunNodes', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRunNodes', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRuns', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineRun', Body, ValidatorState);
validate_response('getPipelineRuns', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelineRuns', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelines', 200, Body, ValidatorState) ->
    validate_response_body('list', 'Pipeline', Body, ValidatorState);
validate_response('getPipelines', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getPipelines', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCM', 200, Body, ValidatorState) ->
    validate_response_body('GithubScm', 'GithubScm', Body, ValidatorState);
validate_response('getSCM', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCM', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCMOrganisationRepositories', 200, Body, ValidatorState) ->
    validate_response_body('list', 'GithubOrganization', Body, ValidatorState);
validate_response('getSCMOrganisationRepositories', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCMOrganisationRepositories', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCMOrganisationRepository', 200, Body, ValidatorState) ->
    validate_response_body('list', 'GithubOrganization', Body, ValidatorState);
validate_response('getSCMOrganisationRepository', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCMOrganisationRepository', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCMOrganisations', 200, Body, ValidatorState) ->
    validate_response_body('list', 'GithubOrganization', Body, ValidatorState);
validate_response('getSCMOrganisations', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getSCMOrganisations', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getUser', 200, Body, ValidatorState) ->
    validate_response_body('User', 'User', Body, ValidatorState);
validate_response('getUser', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getUser', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getUserFavorites', 200, Body, ValidatorState) ->
    validate_response_body('list', 'FavoriteImpl', Body, ValidatorState);
validate_response('getUserFavorites', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getUserFavorites', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getUsers', 200, Body, ValidatorState) ->
    validate_response_body('User', 'User', Body, ValidatorState);
validate_response('getUsers', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getUsers', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postPipelineRun', 200, Body, ValidatorState) ->
    validate_response_body('QueueItemImpl', 'QueueItemImpl', Body, ValidatorState);
validate_response('postPipelineRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postPipelineRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postPipelineRuns', 200, Body, ValidatorState) ->
    validate_response_body('QueueItemImpl', 'QueueItemImpl', Body, ValidatorState);
validate_response('postPipelineRuns', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postPipelineRuns', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('putPipelineFavorite', 200, Body, ValidatorState) ->
    validate_response_body('FavoriteImpl', 'FavoriteImpl', Body, ValidatorState);
validate_response('putPipelineFavorite', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('putPipelineFavorite', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('putPipelineRun', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRun', 'PipelineRun', Body, ValidatorState);
validate_response('putPipelineRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('putPipelineRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('search', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('search', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('search', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('searchClasses', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('searchClasses', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('searchClasses', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getComputer', 200, Body, ValidatorState) ->
    validate_response_body('ComputerSet', 'ComputerSet', Body, ValidatorState);
validate_response('getComputer', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getComputer', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJenkins', 200, Body, ValidatorState) ->
    validate_response_body('Hudson', 'Hudson', Body, ValidatorState);
validate_response('getJenkins', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJenkins', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJob', 200, Body, ValidatorState) ->
    validate_response_body('FreeStyleProject', 'FreeStyleProject', Body, ValidatorState);
validate_response('getJob', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJob', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJob', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobConfig', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('getJobConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobLastBuild', 200, Body, ValidatorState) ->
    validate_response_body('FreeStyleBuild', 'FreeStyleBuild', Body, ValidatorState);
validate_response('getJobLastBuild', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobLastBuild', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobLastBuild', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobProgressiveText', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobProgressiveText', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobProgressiveText', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getJobProgressiveText', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getQueue', 200, Body, ValidatorState) ->
    validate_response_body('Queue', 'Queue', Body, ValidatorState);
validate_response('getQueue', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getQueue', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getQueueItem', 200, Body, ValidatorState) ->
    validate_response_body('Queue', 'Queue', Body, ValidatorState);
validate_response('getQueueItem', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getQueueItem', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getView', 200, Body, ValidatorState) ->
    validate_response_body('ListView', 'ListView', Body, ValidatorState);
validate_response('getView', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getView', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getView', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getViewConfig', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('getViewConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getViewConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('getViewConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('headJenkins', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('headJenkins', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('headJenkins', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postCreateItem', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postCreateItem', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('postCreateItem', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postCreateItem', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postCreateView', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postCreateView', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('postCreateView', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postCreateView', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobBuild', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobBuild', 201, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobBuild', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobBuild', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobBuild', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobConfig', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobConfig', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('postJobConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDelete', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDelete', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDelete', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDelete', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDisable', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDisable', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDisable', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobDisable', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobEnable', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobEnable', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobEnable', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobEnable', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobLastBuildStop', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobLastBuildStop', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobLastBuildStop', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postJobLastBuildStop', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postViewConfig', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postViewConfig', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('postViewConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postViewConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('postViewConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response(_OperationID, _Code, _Body, _ValidatorState) ->
    ok.

%%%
-spec request_params(OperationID :: operation_id()) -> [Param :: request_param()].
request_params('getCrumb') ->
    [
    ];
request_params('deletePipelineQueueItem') ->
    [
        'organization',
        'pipeline',
        'queue'
    ];
request_params('getAuthenticatedUser') ->
    [
        'organization'
    ];
request_params('getClasses') ->
    [
        'class'
    ];
request_params('getJsonWebKey') ->
    [
        'key'
    ];
request_params('getJsonWebToken') ->
    [
        'expiryTimeInMins',
        'maxExpiryTimeInMins'
    ];
request_params('getOrganisation') ->
    [
        'organization'
    ];
request_params('getOrganisations') ->
    [
    ];
request_params('getPipeline') ->
    [
        'organization',
        'pipeline'
    ];
request_params('getPipelineActivities') ->
    [
        'organization',
        'pipeline'
    ];
request_params('getPipelineBranch') ->
    [
        'organization',
        'pipeline',
        'branch'
    ];
request_params('getPipelineBranchRun') ->
    [
        'organization',
        'pipeline',
        'branch',
        'run'
    ];
request_params('getPipelineBranches') ->
    [
        'organization',
        'pipeline'
    ];
request_params('getPipelineFolder') ->
    [
        'organization',
        'folder'
    ];
request_params('getPipelineFolderPipeline') ->
    [
        'organization',
        'pipeline',
        'folder'
    ];
request_params('getPipelineQueue') ->
    [
        'organization',
        'pipeline'
    ];
request_params('getPipelineRun') ->
    [
        'organization',
        'pipeline',
        'run'
    ];
request_params('getPipelineRunLog') ->
    [
        'organization',
        'pipeline',
        'run',
        'start',
        'download'
    ];
request_params('getPipelineRunNode') ->
    [
        'organization',
        'pipeline',
        'run',
        'node'
    ];
request_params('getPipelineRunNodeStep') ->
    [
        'organization',
        'pipeline',
        'run',
        'node',
        'step'
    ];
request_params('getPipelineRunNodeStepLog') ->
    [
        'organization',
        'pipeline',
        'run',
        'node',
        'step'
    ];
request_params('getPipelineRunNodeSteps') ->
    [
        'organization',
        'pipeline',
        'run',
        'node'
    ];
request_params('getPipelineRunNodes') ->
    [
        'organization',
        'pipeline',
        'run'
    ];
request_params('getPipelineRuns') ->
    [
        'organization',
        'pipeline'
    ];
request_params('getPipelines') ->
    [
        'organization'
    ];
request_params('getSCM') ->
    [
        'organization',
        'scm'
    ];
request_params('getSCMOrganisationRepositories') ->
    [
        'organization',
        'scm',
        'scmOrganisation',
        'credentialId',
        'pageSize',
        'pageNumber'
    ];
request_params('getSCMOrganisationRepository') ->
    [
        'organization',
        'scm',
        'scmOrganisation',
        'repository',
        'credentialId'
    ];
request_params('getSCMOrganisations') ->
    [
        'organization',
        'scm',
        'credentialId'
    ];
request_params('getUser') ->
    [
        'organization',
        'user'
    ];
request_params('getUserFavorites') ->
    [
        'user'
    ];
request_params('getUsers') ->
    [
        'organization'
    ];
request_params('postPipelineRun') ->
    [
        'organization',
        'pipeline',
        'run'
    ];
request_params('postPipelineRuns') ->
    [
        'organization',
        'pipeline'
    ];
request_params('putPipelineFavorite') ->
    [
        'organization',
        'pipeline',
        'boolean'
    ];
request_params('putPipelineRun') ->
    [
        'organization',
        'pipeline',
        'run',
        'blocking',
        'timeOutInSecs'
    ];
request_params('search') ->
    [
        'q'
    ];
request_params('searchClasses') ->
    [
        'q'
    ];
request_params('getComputer') ->
    [
        'depth'
    ];
request_params('getJenkins') ->
    [
    ];
request_params('getJob') ->
    [
        'name'
    ];
request_params('getJobConfig') ->
    [
        'name'
    ];
request_params('getJobLastBuild') ->
    [
        'name'
    ];
request_params('getJobProgressiveText') ->
    [
        'name',
        'number',
        'start'
    ];
request_params('getQueue') ->
    [
    ];
request_params('getQueueItem') ->
    [
        'number'
    ];
request_params('getView') ->
    [
        'name'
    ];
request_params('getViewConfig') ->
    [
        'name'
    ];
request_params('headJenkins') ->
    [
    ];
request_params('postCreateItem') ->
    [
        'name',
        'from',
        'mode',
        'Jenkins-Crumb',
        'Content-Type',
        'string'
    ];
request_params('postCreateView') ->
    [
        'name',
        'Jenkins-Crumb',
        'Content-Type',
        'string'
    ];
request_params('postJobBuild') ->
    [
        'name',
        'json',
        'token',
        'Jenkins-Crumb'
    ];
request_params('postJobConfig') ->
    [
        'name',
        'string',
        'Jenkins-Crumb'
    ];
request_params('postJobDelete') ->
    [
        'name',
        'Jenkins-Crumb'
    ];
request_params('postJobDisable') ->
    [
        'name',
        'Jenkins-Crumb'
    ];
request_params('postJobEnable') ->
    [
        'name',
        'Jenkins-Crumb'
    ];
request_params('postJobLastBuildStop') ->
    [
        'name',
        'Jenkins-Crumb'
    ];
request_params('postViewConfig') ->
    [
        'name',
        'string',
        'Jenkins-Crumb'
    ];
request_params(_) ->
    error(unknown_operation).

-spec request_param_info(OperationID :: operation_id(), Name :: request_param()) ->
    #{source => qs_val | binding | header | body, rules => [rule()]}.
request_param_info('deletePipelineQueueItem', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('deletePipelineQueueItem', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('deletePipelineQueueItem', 'queue') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getAuthenticatedUser', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getClasses', 'class') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getJsonWebKey', 'key') ->
    #{
        source => binding,
        rules => [
            {type, integer},
            required
        ]
    };
request_param_info('getJsonWebToken', 'expiryTimeInMins') ->
    #{
        source => qs_val,
        rules => [
            {type, integer},
            not_required
        ]
    };
request_param_info('getJsonWebToken', 'maxExpiryTimeInMins') ->
    #{
        source => qs_val,
        rules => [
            {type, integer},
            not_required
        ]
    };
request_param_info('getOrganisation', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipeline', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipeline', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineActivities', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineActivities', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranch', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranch', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranch', 'branch') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranchRun', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranchRun', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranchRun', 'branch') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranchRun', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranches', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineBranches', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineFolder', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineFolder', 'folder') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineFolderPipeline', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineFolderPipeline', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineFolderPipeline', 'folder') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineQueue', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineQueue', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRun', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRun', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRun', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunLog', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunLog', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunLog', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunLog', 'start') ->
    #{
        source => qs_val,
        rules => [
            {type, integer},
            not_required
        ]
    };
request_param_info('getPipelineRunLog', 'download') ->
    #{
        source => qs_val,
        rules => [
            {type, boolean},
            not_required
        ]
    };
request_param_info('getPipelineRunNode', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNode', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNode', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNode', 'node') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStep', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStep', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStep', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStep', 'node') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStep', 'step') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStepLog', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStepLog', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStepLog', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStepLog', 'node') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeStepLog', 'step') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeSteps', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeSteps', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeSteps', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodeSteps', 'node') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodes', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodes', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRunNodes', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRuns', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelineRuns', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getPipelines', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCM', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCM', 'scm') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepositories', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepositories', 'scm') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepositories', 'scmOrganisation') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepositories', 'credentialId') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('getSCMOrganisationRepositories', 'pageSize') ->
    #{
        source => qs_val,
        rules => [
            {type, integer},
            not_required
        ]
    };
request_param_info('getSCMOrganisationRepositories', 'pageNumber') ->
    #{
        source => qs_val,
        rules => [
            {type, integer},
            not_required
        ]
    };
request_param_info('getSCMOrganisationRepository', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepository', 'scm') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepository', 'scmOrganisation') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepository', 'repository') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisationRepository', 'credentialId') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('getSCMOrganisations', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisations', 'scm') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getSCMOrganisations', 'credentialId') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('getUser', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getUser', 'user') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getUserFavorites', 'user') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getUsers', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postPipelineRun', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postPipelineRun', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postPipelineRun', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postPipelineRuns', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postPipelineRuns', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('putPipelineFavorite', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('putPipelineFavorite', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('putPipelineFavorite', 'boolean') ->
    #{
        source => body,
        rules => [
            {type, boolean},
            required
        ]
    };
request_param_info('putPipelineRun', 'organization') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('putPipelineRun', 'pipeline') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('putPipelineRun', 'run') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('putPipelineRun', 'blocking') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('putPipelineRun', 'timeOutInSecs') ->
    #{
        source => qs_val,
        rules => [
            {type, integer},
            not_required
        ]
    };
request_param_info('search', 'q') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('searchClasses', 'q') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getComputer', 'depth') ->
    #{
        source => qs_val,
        rules => [
            {type, integer},
            required
        ]
    };
request_param_info('getJob', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getJobConfig', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getJobLastBuild', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getJobProgressiveText', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getJobProgressiveText', 'number') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getJobProgressiveText', 'start') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getQueueItem', 'number') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getView', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('getViewConfig', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postCreateItem', 'name') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postCreateItem', 'from') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postCreateItem', 'mode') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postCreateItem', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postCreateItem', 'Content-Type') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postCreateItem', 'string') ->
    #{
        source => body,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postCreateView', 'name') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postCreateView', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postCreateView', 'Content-Type') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postCreateView', 'string') ->
    #{
        source => body,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postJobBuild', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobBuild', 'json') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobBuild', 'token') ->
    #{
        source => qs_val,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postJobBuild', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postJobConfig', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobConfig', 'string') ->
    #{
        source => body,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobConfig', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postJobDelete', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobDelete', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postJobDisable', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobDisable', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postJobEnable', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobEnable', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postJobLastBuildStop', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postJobLastBuildStop', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info('postViewConfig', 'name') ->
    #{
        source => binding,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postViewConfig', 'string') ->
    #{
        source => body,
        rules => [
            {type, binary},
            required
        ]
    };
request_param_info('postViewConfig', 'Jenkins-Crumb') ->
    #{
        source => header,
        rules => [
            {type, binary},
            not_required
        ]
    };
request_param_info(OperationID, Name) ->
    error({unknown_param, OperationID, Name}).

-spec populate_request_params(
        operation_id(), [request_param()], cowboy_req:req(), jesse_state:state(), map()) ->
    {ok, map(), cowboy_req:req()} | {error, _, cowboy_req:req()}.
populate_request_params(_, [], Req, _, Model) ->
    {ok, Model, Req};
populate_request_params(OperationID, [ReqParamName | T], Req0, ValidatorState, Model0) ->
    case populate_request_param(OperationID, ReqParamName, Req0, ValidatorState) of
        {ok, V, Req} ->
            Model = Model0#{ReqParamName => V},
            populate_request_params(OperationID, T, Req, ValidatorState, Model);
        Error ->
            Error
    end.

-spec populate_request_param(
        operation_id(), request_param(), cowboy_req:req(), jesse_state:state()) ->
    {ok, term(), cowboy_req:req()} | {error, term(), cowboy_req:req()}.
populate_request_param(OperationID, ReqParamName, Req0, ValidatorState) ->
    #{rules := Rules, source := Source} = request_param_info(OperationID, ReqParamName),
    case get_value(Source, ReqParamName, Req0) of
        {error, Reason, Req} ->
            {error, Reason, Req};
        {Value, Req} ->
            case prepare_param(Rules, ReqParamName, Value, ValidatorState) of
                {ok, Result} -> {ok, Result, Req};
                {error, Reason} ->
                    {error, Reason, Req}
            end
    end.

validate_response_body(list, ReturnBaseType, Body, ValidatorState) ->
    [
        validate(schema, Item, ReturnBaseType, ValidatorState)
    || Item <- Body];

validate_response_body(_, ReturnBaseType, Body, ValidatorState) ->
    validate(schema, Body, ReturnBaseType, ValidatorState).

-spec validate(rule(), term(), request_param(), jesse_state:state()) ->
    ok | {ok, term()}.
validate(required, undefined, ReqParamName, _) ->
    validation_error(required, ReqParamName, undefined);
validate(required, _Value, _, _) ->
    ok;
validate(not_required, _Value, _, _) ->
    ok;
validate(_, undefined, _, _) ->
    ok;
validate({type, boolean}, Value, _, _) when is_boolean(Value) ->
    ok;
validate({type, integer}, Value, _, _) when is_integer(Value) ->
    ok;
validate({type, float}, Value, _, _) when is_float(Value) ->
    ok;
validate({type, binary}, Value, _, _) when is_binary(Value) ->
    ok;
validate({max, Max}, Value, _, _) when Value =< Max ->
    ok;
validate({min, Min}, Value, _, _) when Min =< Value ->
    ok;
validate({exclusive_max, Max}, Value, _, _) when Value < Max ->
    ok;
validate({exclusive_min, Min}, Value, _, _) when Min < Value ->
    ok;
validate({max_length, MaxLength}, Value, _, _) when is_binary(Value), byte_size(Value) =< MaxLength ->
    ok;
validate({min_length, MinLength}, Value, _, _) when is_binary(Value), MinLength =< byte_size(Value) ->
    ok;
validate(Rule = {type, byte}, Value, ReqParamName, _) when is_binary(Value) ->
    try base64:decode(Value) of
        Decoded -> {ok, Decoded}
    catch error:_Error -> validation_error(Rule, ReqParamName, Value)
    end;
validate(Rule = {type, boolean}, Value, ReqParamName, _) when is_binary(Value) ->
    case to_binary(string:lowercase(Value)) of
        <<"true">> -> {ok, true};
        <<"false">> -> {ok, false};
        _ -> validation_error(Rule, ReqParamName, Value)
    end;
validate(Rule = {type, integer}, Value, ReqParamName, _) when is_binary(Value) ->
    try
        {ok, binary_to_integer(Value)}
    catch
        error:badarg ->
            validation_error(Rule, ReqParamName, Value)
    end;
validate(Rule = {type, float}, Value, ReqParamName, _) when is_binary(Value) ->
    try
        {ok, binary_to_float(Value)}
    catch
        error:badarg ->
            validation_error(Rule, ReqParamName, Value)
    end;
validate(Rule = {type, date}, Value, ReqParamName, _) ->
    case is_binary(Value) of
        true -> ok;
        false -> validation_error(Rule, ReqParamName, Value)
    end;
validate(Rule = {type, datetime}, Value, ReqParamName, _) ->
    try calendar:rfc3339_to_system_time(binary_to_list(Value)) of
        _ -> ok
    catch error:_Error -> validation_error(Rule, ReqParamName, Value)
    end;
validate(Rule = {enum, Values}, Value, ReqParamName, _) ->
    try
        FormattedValue = erlang:binary_to_existing_atom(Value, utf8),
        case lists:member(FormattedValue, Values) of
            true -> {ok, FormattedValue};
            false -> validation_error(Rule, ReqParamName, Value)
        end
    catch
        error:badarg ->
            validation_error(Rule, ReqParamName, Value)
    end;
validate(Rule = {pattern, Pattern}, Value, ReqParamName, _) ->
    {ok, MP} = re:compile(Pattern),
    case re:run(Value, MP) of
        {match, _} -> ok;
        _ -> validation_error(Rule, ReqParamName, Value)
    end;
validate(schema, Value, ReqParamName, ValidatorState) ->
    Definition = iolist_to_binary(["#/components/schemas/", atom_to_binary(ReqParamName, utf8)]),
    validate({schema, object, Definition}, Value, ReqParamName, ValidatorState);
validate({schema, list, Definition}, Value, ReqParamName, ValidatorState) ->
    lists:foreach(
      fun(Item) ->
              validate({schema, object, Definition}, Item, ReqParamName, ValidatorState)
      end, Value);
validate(Rule = {schema, object, Definition}, Value, ReqParamName, ValidatorState) ->
    try
        _ = validate_with_schema(Value, Definition, ValidatorState),
        ok
    catch
        throw:[{schema_invalid, _, Error} | _] ->
            Info = #{
                type => schema_invalid,
                error => Error
            },
            validation_error(Rule, ReqParamName, Value, Info);
        throw:[{data_invalid, Schema, Error, _, Path} | _] ->
            Info = #{
                type => data_invalid,
                error => Error,
                schema => Schema,
                path => Path
            },
            validation_error(Rule, ReqParamName, Value, Info)
    end;
validate(Rule, Value, ReqParamName, _) ->
    validation_error(Rule, ReqParamName, Value).

-spec validation_error(rule(), request_param(), term()) -> no_return().
validation_error(ViolatedRule, Name, Value) ->
    validation_error(ViolatedRule, Name, Value, #{}).

-spec validation_error(rule(), request_param(), term(), Info :: #{_ := _}) -> no_return().
validation_error(ViolatedRule, Name, Value, Info) ->
    throw({wrong_param, Name, Value, ViolatedRule, Info}).

-spec get_value(body | qs_val | header | binding, request_param(), cowboy_req:req()) ->
    {any(), cowboy_req:req()} |
    {error, any(), cowboy_req:req()}.
get_value(body, _Name, Req0) ->
    {ok, Body, Req} = read_entire_body(Req0),
    case prepare_body(Body) of
        {error, Reason} ->
            {error, Reason, Req};
        Value ->
            {Value, Req}
    end;
get_value(qs_val, Name, Req) ->
    QS = cowboy_req:parse_qs(Req),
    Value = get_opt(to_qs(Name), QS),
    {Value, Req};
get_value(header, Name, Req) ->
    Headers = cowboy_req:headers(Req),
    Value = maps:get(to_header(Name), Headers, undefined),
    {Value, Req};
get_value(binding, Name, Req) ->
    Value = cowboy_req:binding(Name, Req),
    {Value, Req}.

-spec read_entire_body(cowboy_req:req()) -> {ok, binary(), cowboy_req:req()}.
read_entire_body(Req) ->
    read_entire_body(Req, []).

-spec read_entire_body(cowboy_req:req(), iodata()) -> {ok, binary(), cowboy_req:req()}.
read_entire_body(Request, Acc) -> % {
    case cowboy_req:read_body(Request) of
        {ok, Data, NewRequest} ->
            {ok, iolist_to_binary(lists:reverse([Data | Acc])), NewRequest};
        {more, Data, NewRequest} ->
            read_entire_body(NewRequest, [Data | Acc])
    end.

prepare_body(<<>>) ->
    <<>>;
prepare_body(Body) ->
    try
        json:decode(Body)
    catch
        error:Error ->
            {error, {invalid_json, Body, Error}}
    end.

validate_with_schema(Body, Definition, ValidatorState) ->
    jesse_schema_validator:validate_with_state(
        [{<<"$ref">>, Definition}],
        Body,
        ValidatorState
    ).

-spec prepare_param([rule()], request_param(), term(), jesse_state:state()) ->
    {ok, term()} | {error, Reason :: any()}.
prepare_param(Rules, ReqParamName, Value, ValidatorState) ->
    Fun = fun(Rule, Acc) ->
        case validate(Rule, Acc, ReqParamName, ValidatorState) of
            ok -> Acc;
            {ok, Prepared} -> Prepared
        end
    end,
    try
        Result = lists:foldl(Fun, Value, Rules),
        {ok, Result}
    catch
        throw:Reason ->
            {error, Reason}
    end.

-spec to_binary(iodata()) -> binary().
to_binary(V) when is_binary(V)  -> V;
to_binary(V) when is_list(V)    -> iolist_to_binary(V).

-spec to_header(request_param()) -> binary().
to_header(Name) ->
    to_binary(string:lowercase(atom_to_binary(Name, utf8))).

-spec to_qs(request_param()) -> binary().
to_qs(Name) ->
    atom_to_binary(Name, utf8).

-spec get_opt(any(), []) -> any().
get_opt(Key, Opts) ->
    get_opt(Key, Opts, undefined).

-spec get_opt(any(), [], any()) -> any().
get_opt(Key, Opts, Default) ->
    case lists:keyfind(Key, 1, Opts) of
        {_, Value} -> Value;
        false -> Default
    end.

get_openapi_path() ->
    {ok, AppName} = application:get_application(?MODULE),
    filename:join(priv_dir(AppName), "openapi.json").

-include_lib("kernel/include/file.hrl").

-spec priv_dir(Application :: atom()) -> file:name_all().
priv_dir(AppName) ->
    case code:priv_dir(AppName) of
        Value when is_list(Value) ->
            Value ++ "/";
        _Error ->
            select_priv_dir([filename:join(["apps", atom_to_list(AppName), "priv"]), "priv"])
     end.

select_priv_dir(Paths) ->
    case lists:dropwhile(fun test_priv_dir/1, Paths) of
        [Path | _] -> Path;
        _          -> exit(no_priv_dir)
    end.

test_priv_dir(Path) ->
    case file:read_file_info(Path) of
        {ok, #file_info{type = directory}} ->
            false;
        _ ->
            true
    end.
