-module(swagger_api).

-export([request_params/1]).
-export([request_param_info/2]).
-export([populate_request/3]).
-export([validate_response/4]).

-type operation_id() :: atom().
-type request_param() :: atom().

-export_type([operation_id/0]).

-spec request_params(OperationID :: operation_id()) -> [Param :: request_param()].


request_params('GetAuthenticatedUser') ->
    [
        'organisation'
    ];

request_params('GetClasses') ->
    [
        'class'
    ];

request_params('GetOrganisation') ->
    [
        'organisation'
    ];

request_params('GetOrganisations') ->
    [
    ];

request_params('GetPipelineBranchByOrg') ->
    [
        'organisation',
        'pipeline',
        'branch'
    ];

request_params('GetPipelineBranchesByOrg') ->
    [
        'organisation',
        'pipeline'
    ];

request_params('GetPipelineByOrg') ->
    [
        'organisation',
        'pipeline'
    ];

request_params('GetPipelineFolderByOrg') ->
    [
        'organisation',
        'folder'
    ];

request_params('GetPipelineFolderByOrg_0') ->
    [
        'organisation',
        'pipeline',
        'folder'
    ];

request_params('GetPipelinesByOrg') ->
    [
        'organisation'
    ];

request_params('GetUser') ->
    [
        'organisation',
        'user'
    ];

request_params('GetUsers') ->
    [
        'organisation'
    ];

request_params('Search') ->
    [
        'q'
    ];

request_params('Search_0') ->
    [
        'q'
    ];


request_params('GetComputer') ->
    [
    ];

request_params('GetCrumb') ->
    [
    ];

request_params('GetJenkins') ->
    [
    ];

request_params('GetJob') ->
    [
        'name'
    ];

request_params('GetJobConfig') ->
    [
        'name'
    ];

request_params('GetJobLastBuild') ->
    [
        'name'
    ];

request_params('GetJobProgressiveText') ->
    [
        'name',
        'number',
        'start'
    ];

request_params('GetQueue') ->
    [
    ];

request_params('GetQueueItem') ->
    [
        'number'
    ];

request_params('GetView') ->
    [
        'name'
    ];

request_params('GetViewConfig') ->
    [
        'name'
    ];

request_params('HeadJenkins') ->
    [
    ];

request_params('PostCreateItem') ->
    [
        'name',
        'from',
        'mode',
        'binary',
        'Jenkins-Crumb',
        'Content-Type'
    ];

request_params('PostCreateView') ->
    [
        'name',
        'binary',
        'Jenkins-Crumb',
        'Content-Type'
    ];

request_params('PostJobBuild') ->
    [
        'name',
        'json',
        'token',
        'Jenkins-Crumb'
    ];

request_params('PostJobConfig') ->
    [
        'name',
        'binary',
        'Jenkins-Crumb'
    ];

request_params('PostJobDelete') ->
    [
        'name',
        'Jenkins-Crumb'
    ];

request_params('PostJobDisable') ->
    [
        'name',
        'Jenkins-Crumb'
    ];

request_params('PostJobEnable') ->
    [
        'name',
        'Jenkins-Crumb'
    ];

request_params('PostJobLastBuildStop') ->
    [
        'name',
        'Jenkins-Crumb'
    ];

request_params('PostViewConfig') ->
    [
        'name',
        'binary',
        'Jenkins-Crumb'
    ];

request_params(_) ->
    error(unknown_operation).

-type rule() ::
    {type, 'binary'} |
    {type, 'integer'} |
    {type, 'float'} |
    {type, 'binary'} |
    {type, 'boolean'} |
    {type, 'date'} |
    {type, 'datetime'} |
    {enum, [atom()]} |
    {max, Max :: number()} |
    {exclusive_max, Max :: number()} |
    {min, Min :: number()} |
    {exclusive_min, Min :: number()} |
    {max_length, MaxLength :: integer()} |
    {min_length, MaxLength :: integer()} |
    {pattern, Pattern :: string()} |
    schema |
    required |
    not_required.

-spec request_param_info(OperationID :: operation_id(), Name :: request_param()) -> #{
    source => qs_val | binding | header | body,
    rules => [rule()]
}.



request_param_info('GetAuthenticatedUser', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetClasses', 'class') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetOrganisation', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchByOrg', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchByOrg', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchByOrg', 'branch') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchesByOrg', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchesByOrg', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineByOrg', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineByOrg', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderByOrg', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderByOrg', 'folder') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderByOrg_0', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderByOrg_0', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderByOrg_0', 'folder') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelinesByOrg', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetUser', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetUser', 'user') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetUsers', 'organisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('Search', 'q') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('Search_0', 'q') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            required
        ]
    };


request_param_info('GetJob', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetJobConfig', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetJobLastBuild', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetJobProgressiveText', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetJobProgressiveText', 'number') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetJobProgressiveText', 'start') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetQueueItem', 'number') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetView', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetViewConfig', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostCreateItem', 'name') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostCreateItem', 'from') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostCreateItem', 'mode') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostCreateItem', 'binary') ->
    #{
        source =>   body,
        rules => [
            {type, 'binary'},
            schema,
            not_required
        ]
    };

request_param_info('PostCreateItem', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostCreateItem', 'Content-Type') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostCreateView', 'name') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostCreateView', 'binary') ->
    #{
        source =>   body,
        rules => [
            {type, 'binary'},
            schema,
            not_required
        ]
    };

request_param_info('PostCreateView', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostCreateView', 'Content-Type') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostJobBuild', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostJobBuild', 'json') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostJobBuild', 'token') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostJobBuild', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostJobConfig', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostJobConfig', 'binary') ->
    #{
        source =>   body,
        rules => [
            {type, 'binary'},
            schema,
            required
        ]
    };

request_param_info('PostJobConfig', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostJobDelete', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostJobDelete', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostJobDisable', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostJobDisable', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostJobEnable', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostJobEnable', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostJobLastBuildStop', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostJobLastBuildStop', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PostViewConfig', 'name') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostViewConfig', 'binary') ->
    #{
        source =>   body,
        rules => [
            {type, 'binary'},
            schema,
            required
        ]
    };

request_param_info('PostViewConfig', 'Jenkins-Crumb') ->
    #{
        source =>   header,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info(OperationID, Name) ->
    error({unknown_param, OperationID, Name}).

-spec populate_request(
    OperationID :: operation_id(),
    Req :: cowboy_req:req(),
    ValidatorState :: jesse_state:state()
) ->
    {ok, Model :: #{}, Req :: cowboy_req:req()} |
    {error, Reason :: any(), Req :: cowboy_req:req()}.

populate_request(OperationID, Req, ValidatorState) ->
    Params = request_params(OperationID),
    populate_request_params(OperationID, Params, Req, ValidatorState, #{}).

populate_request_params(_, [], Req, _, Model) ->
    {ok, Model, Req};

populate_request_params(OperationID, [FieldParams | T], Req0, ValidatorState, Model) ->
    case populate_request_param(OperationID, FieldParams, Req0, ValidatorState) of
        {ok, K, V, Req} ->
            populate_request_params(OperationID, T, Req, ValidatorState, maps:put(K, V, Model));
        Error ->
            Error
    end.

populate_request_param(OperationID, Name, Req0, ValidatorState) ->
    #{rules := Rules, source := Source} = request_param_info(OperationID, Name),
    {Value, Req} = get_value(Source, Name, Req0),
    case prepare_param(Rules, Name, Value, ValidatorState) of
        {ok, Result} -> {ok, Name, Result, Req};
        {error, Reason} ->
            {error, Reason, Req}
    end.

-spec validate_response(
    OperationID :: operation_id(),
    Code :: 200..599,
    Body :: jesse:json_term(),
    ValidatorState :: jesse_state:state()
) -> ok | no_return().


validate_response('GetAuthenticatedUser', 200, Body, ValidatorState) ->
    validate_response_body('swaggyjenkinsUser', 'swaggyjenkinsUser', Body, ValidatorState);
validate_response('GetAuthenticatedUser', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetAuthenticatedUser', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetClasses', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('GetClasses', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetClasses', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetOrganisation', 200, Body, ValidatorState) ->
    validate_response_body('swaggyjenkinsOrganisation', 'swaggyjenkinsOrganisation', Body, ValidatorState);
validate_response('GetOrganisation', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetOrganisation', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetOrganisation', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetOrganisations', 200, Body, ValidatorState) ->
    validate_response_body('getOrganisations', 'getOrganisations', Body, ValidatorState);
validate_response('GetOrganisations', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetOrganisations', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineBranchByOrg', 200, Body, ValidatorState) ->
    validate_response_body('iojenkinsblueoceanrestimplpipelineBranchImpl', 'iojenkinsblueoceanrestimplpipelineBranchImpl', Body, ValidatorState);
validate_response('GetPipelineBranchByOrg', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineBranchByOrg', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineBranchesByOrg', 200, Body, ValidatorState) ->
    validate_response_body('getMultibranchPipeline', 'getMultibranchPipeline', Body, ValidatorState);
validate_response('GetPipelineBranchesByOrg', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineBranchesByOrg', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineByOrg', 200, Body, ValidatorState) ->
    validate_response_body('swaggyjenkinsPipeline', 'swaggyjenkinsPipeline', Body, ValidatorState);
validate_response('GetPipelineByOrg', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineByOrg', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineByOrg', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineFolderByOrg', 200, Body, ValidatorState) ->
    validate_response_body('iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl', 'iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl', Body, ValidatorState);
validate_response('GetPipelineFolderByOrg', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineFolderByOrg', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineFolderByOrg_0', 200, Body, ValidatorState) ->
    validate_response_body('iojenkinsblueoceanserviceembeddedrestPipelineImpl', 'iojenkinsblueoceanserviceembeddedrestPipelineImpl', Body, ValidatorState);
validate_response('GetPipelineFolderByOrg_0', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineFolderByOrg_0', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelinesByOrg', 200, Body, ValidatorState) ->
    validate_response_body('getPipelines', 'getPipelines', Body, ValidatorState);
validate_response('GetPipelinesByOrg', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelinesByOrg', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetUser', 200, Body, ValidatorState) ->
    validate_response_body('swaggyjenkinsUser', 'swaggyjenkinsUser', Body, ValidatorState);
validate_response('GetUser', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetUser', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetUsers', 200, Body, ValidatorState) ->
    validate_response_body('swaggyjenkinsUser', 'swaggyjenkinsUser', Body, ValidatorState);
validate_response('GetUsers', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetUsers', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('Search', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('Search', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('Search', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('Search_0', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('Search_0', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('Search_0', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);


validate_response('GetComputer', 200, Body, ValidatorState) ->
    validate_response_body('hudsonmodelComputerSet', 'hudsonmodelComputerSet', Body, ValidatorState);
validate_response('GetComputer', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetComputer', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetCrumb', 200, Body, ValidatorState) ->
    validate_response_body('hudsonsecuritycsrfDefaultCrumbIssuer', 'hudsonsecuritycsrfDefaultCrumbIssuer', Body, ValidatorState);
validate_response('GetCrumb', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetCrumb', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJenkins', 200, Body, ValidatorState) ->
    validate_response_body('hudsonmodelHudson', 'hudsonmodelHudson', Body, ValidatorState);
validate_response('GetJenkins', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJenkins', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJob', 200, Body, ValidatorState) ->
    validate_response_body('hudsonmodelFreeStyleProject', 'hudsonmodelFreeStyleProject', Body, ValidatorState);
validate_response('GetJob', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJob', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJob', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJobConfig', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('GetJobConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJobConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJobConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJobLastBuild', 200, Body, ValidatorState) ->
    validate_response_body('hudsonmodelFreeStyleBuild', 'hudsonmodelFreeStyleBuild', Body, ValidatorState);
validate_response('GetJobLastBuild', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJobLastBuild', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJobLastBuild', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJobProgressiveText', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJobProgressiveText', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJobProgressiveText', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJobProgressiveText', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetQueue', 200, Body, ValidatorState) ->
    validate_response_body('hudsonmodelQueue', 'hudsonmodelQueue', Body, ValidatorState);
validate_response('GetQueue', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetQueue', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetQueueItem', 200, Body, ValidatorState) ->
    validate_response_body('hudsonmodelQueue', 'hudsonmodelQueue', Body, ValidatorState);
validate_response('GetQueueItem', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetQueueItem', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetView', 200, Body, ValidatorState) ->
    validate_response_body('hudsonmodelListView', 'hudsonmodelListView', Body, ValidatorState);
validate_response('GetView', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetView', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetView', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetViewConfig', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('GetViewConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetViewConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetViewConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('HeadJenkins', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('HeadJenkins', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('HeadJenkins', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostCreateItem', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostCreateItem', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('PostCreateItem', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostCreateItem', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostCreateView', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostCreateView', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('PostCreateView', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostCreateView', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostJobBuild', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobBuild', 201, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobBuild', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobBuild', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobBuild', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostJobConfig', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobConfig', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('PostJobConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostJobDelete', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobDelete', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobDelete', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobDelete', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostJobDisable', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobDisable', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobDisable', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobDisable', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostJobEnable', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobEnable', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobEnable', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobEnable', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostJobLastBuildStop', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobLastBuildStop', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobLastBuildStop', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostJobLastBuildStop', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostViewConfig', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostViewConfig', 400, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('PostViewConfig', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostViewConfig', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostViewConfig', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);


validate_response(_OperationID, _Code, _Body, _ValidatorState) ->
    ok.

validate_response_body('list', ReturnBaseType, Body, ValidatorState) ->
    [
        validate(schema, ReturnBaseType, Item, ValidatorState)
    || Item <- Body];

validate_response_body(_, ReturnBaseType, Body, ValidatorState) ->
    validate(schema, ReturnBaseType, Body, ValidatorState).

%%%
validate(Rule = required, Name, Value, _ValidatorState) ->
    case Value of
        undefined -> validation_error(Rule, Name);
        _ -> ok
    end;

validate(not_required, _Name, _Value, _ValidatorState) ->
    ok;

validate(_, _Name, undefined, _ValidatorState) ->
    ok;

validate(Rule = {type, 'integer'}, Name, Value, _ValidatorState) ->
    try
        {ok, swagger_utils:to_int(Value)}
    catch
        error:badarg ->
            validation_error(Rule, Name)
    end;

validate(Rule = {type, 'float'}, Name, Value, _ValidatorState) ->
    try
        {ok, swagger_utils:to_float(Value)}
    catch
        error:badarg ->
            validation_error(Rule, Name)
    end;

validate(Rule = {type, 'binary'}, Name, Value, _ValidatorState) ->
    case is_binary(Value) of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(_Rule = {type, 'boolean'}, _Name, Value, _ValidatorState) when is_boolean(Value) ->
    {ok, Value};

validate(Rule = {type, 'boolean'}, Name, Value, _ValidatorState) ->
    V = binary_to_lower(Value),
    try
        case binary_to_existing_atom(V, utf8) of
            B when is_boolean(B) -> {ok, B};
            _ -> validation_error(Rule, Name)
        end
    catch
        error:badarg ->
            validation_error(Rule, Name)
    end;

validate(Rule = {type, 'date'}, Name, Value, _ValidatorState) ->
    case is_binary(Value) of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {type, 'datetime'}, Name, Value, _ValidatorState) ->
    case is_binary(Value) of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {enum, Values}, Name, Value, _ValidatorState) ->
    try
        FormattedValue = erlang:binary_to_existing_atom(Value, utf8),
        case lists:member(FormattedValue, Values) of
            true -> {ok, FormattedValue};
            false -> validation_error(Rule, Name)
        end
    catch
        error:badarg ->
            validation_error(Rule, Name)
    end;

validate(Rule = {max, Max}, Name, Value, _ValidatorState) ->
    case Value >= Max of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {exclusive_max, ExclusiveMax}, Name, Value, _ValidatorState) ->
    case Value > ExclusiveMax of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {min, Min}, Name, Value, _ValidatorState) ->
    case Value =< Min of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {exclusive_min, ExclusiveMin}, Name, Value, _ValidatorState) ->
    case Value =< ExclusiveMin of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {max_length, MaxLength}, Name, Value, _ValidatorState) ->
    case size(Value) =< MaxLength of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {min_length, MinLength}, Name, Value, _ValidatorState) ->
    case size(Value) >= MinLength of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {pattern, Pattern}, Name, Value, _ValidatorState) ->
    {ok, MP} = re:compile(Pattern),
    case re:run(Value, MP) of
        {match, _} -> ok;
        _ -> validation_error(Rule, Name)
    end;

validate(Rule = schema, Name, Value, ValidatorState) ->
    Definition =  list_to_binary("#/definitions/" ++ swagger_utils:to_list(Name)),
    try
        _ = validate_with_schema(Value, Definition, ValidatorState),
        ok
    catch
        throw:[{schema_invalid, _, Error} | _] ->
            Info = #{
                type => schema_invalid,
                error => Error
            },
            validation_error(Rule, Name, Info);
        throw:[{data_invalid, Schema, Error, _, Path} | _] ->
            Info = #{
                type => data_invalid,
                error => Error,
                schema => Schema,
                path => Path
            },
            validation_error(Rule, Name, Info)
    end;

validate(Rule, Name, _Value, _ValidatorState) ->
    error_logger:info_msg("Can't validate ~p with ~p", [Name, Rule]),
    error({unknown_validation_rule, Rule}).

-spec validation_error(Rule :: any(), Name :: any()) -> no_return().

validation_error(ViolatedRule, Name) ->
    validation_error(ViolatedRule, Name, #{}).

-spec validation_error(Rule :: any(), Name :: any(), Info :: #{}) -> no_return().

validation_error(ViolatedRule, Name, Info) ->
    throw({wrong_param, Name, ViolatedRule, Info}).

get_value(body, _Name, Req0) ->
    {ok, Body, Req} = cowboy_req:body(Req0),
    Value = prepare_body(Body),
    {Value, Req};

get_value(qs_val, Name, Req0) ->
    {QS, Req} = cowboy_req:qs_vals(Req0),
    Value = swagger_utils:get_opt(swagger_utils:to_qs(Name), QS),
    {Value, Req};

get_value(header, Name, Req0) ->
    {Headers, Req} = cowboy_req:headers(Req0),
    Value = swagger_utils:get_opt(swagger_utils:to_header(Name), Headers),
    {Value, Req};

get_value(binding, Name, Req0) ->
    {Bindings, Req} = cowboy_req:bindings(Req0),
    Value = swagger_utils:get_opt(swagger_utils:to_binding(Name), Bindings),
    {Value, Req}.

prepare_body(Body) ->
    case Body of
        <<"">> -> <<"">>;
        _ -> jsx:decode(Body, [return_maps])
    end.

validate_with_schema(Body, Definition, ValidatorState) ->
    jesse_schema_validator:validate_with_state(
        [{<<"$ref">>, Definition}],
        Body,
        ValidatorState
    ).

prepare_param(Rules, Name, Value, ValidatorState) ->
    try
        Result = lists:foldl(
            fun(Rule, Acc) ->
                case validate(Rule, Name, Acc, ValidatorState) of
                    ok -> Acc;
                    {ok, Prepared} -> Prepared
                end
            end,
            Value,
            Rules
        ),
        {ok, Result}
    catch
        throw:Reason ->
            {error, Reason}
    end.

binary_to_lower(V) when is_binary(V) ->
    list_to_binary(string:to_lower(swagger_utils:to_list(V))).
