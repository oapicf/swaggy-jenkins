-module(openapi_api).

-export([request_params/1]).
-export([request_param_info/2]).
-export([populate_request/3]).
-export([validate_response/4]).
%% exported to silence openapi complains
-export([get_value/3, validate_response_body/4]).

-type operation_id() :: atom().
-type request_param() :: atom().

-export_type([operation_id/0]).

-spec request_params(OperationID :: operation_id()) -> [Param :: request_param()].


request_params('GetCrumb') ->
    [
    ];


request_params('DeletePipelineQueueItem') ->
    [
        'organization',
        'pipeline',
        'queue'
    ];

request_params('GetAuthenticatedUser') ->
    [
        'organization'
    ];

request_params('GetClasses') ->
    [
        'class'
    ];

request_params('GetJsonWebKey') ->
    [
        'key'
    ];

request_params('GetJsonWebToken') ->
    [
        'expiryTimeInMins',
        'maxExpiryTimeInMins'
    ];

request_params('GetOrganisation') ->
    [
        'organization'
    ];

request_params('GetOrganisations') ->
    [
    ];

request_params('GetPipeline') ->
    [
        'organization',
        'pipeline'
    ];

request_params('GetPipelineActivities') ->
    [
        'organization',
        'pipeline'
    ];

request_params('GetPipelineBranch') ->
    [
        'organization',
        'pipeline',
        'branch'
    ];

request_params('GetPipelineBranchRun') ->
    [
        'organization',
        'pipeline',
        'branch',
        'run'
    ];

request_params('GetPipelineBranches') ->
    [
        'organization',
        'pipeline'
    ];

request_params('GetPipelineFolder') ->
    [
        'organization',
        'folder'
    ];

request_params('GetPipelineFolderPipeline') ->
    [
        'organization',
        'pipeline',
        'folder'
    ];

request_params('GetPipelineQueue') ->
    [
        'organization',
        'pipeline'
    ];

request_params('GetPipelineRun') ->
    [
        'organization',
        'pipeline',
        'run'
    ];

request_params('GetPipelineRunLog') ->
    [
        'organization',
        'pipeline',
        'run',
        'start',
        'download'
    ];

request_params('GetPipelineRunNode') ->
    [
        'organization',
        'pipeline',
        'run',
        'node'
    ];

request_params('GetPipelineRunNodeStep') ->
    [
        'organization',
        'pipeline',
        'run',
        'node',
        'step'
    ];

request_params('GetPipelineRunNodeStepLog') ->
    [
        'organization',
        'pipeline',
        'run',
        'node',
        'step'
    ];

request_params('GetPipelineRunNodeSteps') ->
    [
        'organization',
        'pipeline',
        'run',
        'node'
    ];

request_params('GetPipelineRunNodes') ->
    [
        'organization',
        'pipeline',
        'run'
    ];

request_params('GetPipelineRuns') ->
    [
        'organization',
        'pipeline'
    ];

request_params('GetPipelines') ->
    [
        'organization'
    ];

request_params('GetSCM') ->
    [
        'organization',
        'scm'
    ];

request_params('GetSCMOrganisationRepositories') ->
    [
        'organization',
        'scm',
        'scmOrganisation',
        'credentialId',
        'pageSize',
        'pageNumber'
    ];

request_params('GetSCMOrganisationRepository') ->
    [
        'organization',
        'scm',
        'scmOrganisation',
        'repository',
        'credentialId'
    ];

request_params('GetSCMOrganisations') ->
    [
        'organization',
        'scm',
        'credentialId'
    ];

request_params('GetUser') ->
    [
        'organization',
        'user'
    ];

request_params('GetUserFavorites') ->
    [
        'user'
    ];

request_params('GetUsers') ->
    [
        'organization'
    ];

request_params('PostPipelineRun') ->
    [
        'organization',
        'pipeline',
        'run'
    ];

request_params('PostPipelineRuns') ->
    [
        'organization',
        'pipeline'
    ];

request_params('PutPipelineFavorite') ->
    [
        'organization',
        'pipeline',
        'UNKNOWN_BASE_TYPE'
    ];

request_params('PutPipelineRun') ->
    [
        'organization',
        'pipeline',
        'run',
        'blocking',
        'timeOutInSecs'
    ];

request_params('Search') ->
    [
        'q'
    ];

request_params('SearchClasses') ->
    [
        'q'
    ];


request_params('GetComputer') ->
    [
        'depth'
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
        'Jenkins-Crumb',
        'Content-Type',
        'binary'
    ];

request_params('PostCreateView') ->
    [
        'name',
        'Jenkins-Crumb',
        'Content-Type',
        'binary'
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




request_param_info('DeletePipelineQueueItem', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('DeletePipelineQueueItem', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('DeletePipelineQueueItem', 'queue') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetAuthenticatedUser', 'organization') ->
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

request_param_info('GetJsonWebKey', 'key') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'integer'},
            required
        ]
    };

request_param_info('GetJsonWebToken', 'expiryTimeInMins') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'integer'},
            not_required
        ]
    };

request_param_info('GetJsonWebToken', 'maxExpiryTimeInMins') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'integer'},
            not_required
        ]
    };

request_param_info('GetOrganisation', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipeline', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipeline', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineActivities', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineActivities', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranch', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranch', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranch', 'branch') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchRun', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchRun', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchRun', 'branch') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranchRun', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranches', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineBranches', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolder', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolder', 'folder') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderPipeline', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderPipeline', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineFolderPipeline', 'folder') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineQueue', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineQueue', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRun', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRun', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRun', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunLog', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunLog', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunLog', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunLog', 'start') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'integer'},
            not_required
        ]
    };

request_param_info('GetPipelineRunLog', 'download') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'boolean'},
            not_required
        ]
    };

request_param_info('GetPipelineRunNode', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNode', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNode', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNode', 'node') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStep', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStep', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStep', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStep', 'node') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStep', 'step') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStepLog', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStepLog', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStepLog', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStepLog', 'node') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeStepLog', 'step') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeSteps', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeSteps', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeSteps', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodeSteps', 'node') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodes', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodes', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRunNodes', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRuns', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelineRuns', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetPipelines', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCM', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCM', 'scm') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepositories', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepositories', 'scm') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepositories', 'scmOrganisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepositories', 'credentialId') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('GetSCMOrganisationRepositories', 'pageSize') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'integer'},
            not_required
        ]
    };

request_param_info('GetSCMOrganisationRepositories', 'pageNumber') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'integer'},
            not_required
        ]
    };

request_param_info('GetSCMOrganisationRepository', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepository', 'scm') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepository', 'scmOrganisation') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepository', 'repository') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisationRepository', 'credentialId') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('GetSCMOrganisations', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisations', 'scm') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetSCMOrganisations', 'credentialId') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('GetUser', 'organization') ->
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

request_param_info('GetUserFavorites', 'user') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('GetUsers', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostPipelineRun', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostPipelineRun', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostPipelineRun', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostPipelineRuns', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PostPipelineRuns', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PutPipelineFavorite', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PutPipelineFavorite', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PutPipelineFavorite', 'UNKNOWN_BASE_TYPE') ->
    #{
        source =>   body,
        rules => [
            schema,
            required
        ]
    };

request_param_info('PutPipelineRun', 'organization') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PutPipelineRun', 'pipeline') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PutPipelineRun', 'run') ->
    #{
        source =>  binding ,
        rules => [
            {type, 'binary'},
            required
        ]
    };

request_param_info('PutPipelineRun', 'blocking') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            not_required
        ]
    };

request_param_info('PutPipelineRun', 'timeOutInSecs') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'integer'},
            not_required
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

request_param_info('SearchClasses', 'q') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'binary'},
            required
        ]
    };


request_param_info('GetComputer', 'depth') ->
    #{
        source => qs_val  ,
        rules => [
            {type, 'integer'},
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

request_param_info('PostCreateItem', 'binary') ->
    #{
        source =>   body,
        rules => [
            {type, 'binary'},
            schema,
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

request_param_info('PostCreateView', 'binary') ->
    #{
        source =>   body,
        rules => [
            {type, 'binary'},
            schema,
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
    case get_value(Source, Name, Req0) of
        {error, Reason, Req} ->
            {error, Reason, Req};
        {Value, Req} ->
            case prepare_param(Rules, Name, Value, ValidatorState) of
                {ok, Result} -> {ok, Name, Result, Req};
                {error, Reason} ->
                    {error, Reason, Req}
            end
    end.

-spec validate_response(
    OperationID :: operation_id(),
    Code :: 200..599,
    Body :: jesse:json_term(),
    ValidatorState :: jesse_state:state()
) -> ok | no_return().


validate_response('GetCrumb', 200, Body, ValidatorState) ->
    validate_response_body('DefaultCrumbIssuer', 'DefaultCrumbIssuer', Body, ValidatorState);
validate_response('GetCrumb', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetCrumb', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);


validate_response('DeletePipelineQueueItem', 200, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('DeletePipelineQueueItem', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('DeletePipelineQueueItem', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetAuthenticatedUser', 200, Body, ValidatorState) ->
    validate_response_body('User', 'User', Body, ValidatorState);
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

validate_response('GetJsonWebKey', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('GetJsonWebKey', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJsonWebKey', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJsonWebToken', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('GetJsonWebToken', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJsonWebToken', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetOrganisation', 200, Body, ValidatorState) ->
    validate_response_body('Organisation', 'Organisation', Body, ValidatorState);
validate_response('GetOrganisation', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetOrganisation', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetOrganisation', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetOrganisations', 200, Body, ValidatorState) ->
    validate_response_body('list', 'Organisation', Body, ValidatorState);
validate_response('GetOrganisations', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetOrganisations', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipeline', 200, Body, ValidatorState) ->
    validate_response_body('Pipeline', 'Pipeline', Body, ValidatorState);
validate_response('GetPipeline', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipeline', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipeline', 404, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineActivities', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineActivity', Body, ValidatorState);
validate_response('GetPipelineActivities', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineActivities', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineBranch', 200, Body, ValidatorState) ->
    validate_response_body('BranchImpl', 'BranchImpl', Body, ValidatorState);
validate_response('GetPipelineBranch', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineBranch', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineBranchRun', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRun', 'PipelineRun', Body, ValidatorState);
validate_response('GetPipelineBranchRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineBranchRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineBranches', 200, Body, ValidatorState) ->
    validate_response_body('MultibranchPipeline', 'MultibranchPipeline', Body, ValidatorState);
validate_response('GetPipelineBranches', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineBranches', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineFolder', 200, Body, ValidatorState) ->
    validate_response_body('PipelineFolderImpl', 'PipelineFolderImpl', Body, ValidatorState);
validate_response('GetPipelineFolder', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineFolder', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineFolderPipeline', 200, Body, ValidatorState) ->
    validate_response_body('PipelineImpl', 'PipelineImpl', Body, ValidatorState);
validate_response('GetPipelineFolderPipeline', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineFolderPipeline', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineQueue', 200, Body, ValidatorState) ->
    validate_response_body('list', 'QueueItemImpl', Body, ValidatorState);
validate_response('GetPipelineQueue', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineQueue', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRun', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRun', 'PipelineRun', Body, ValidatorState);
validate_response('GetPipelineRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRunLog', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('GetPipelineRunLog', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRunLog', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRunNode', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRunNode', 'PipelineRunNode', Body, ValidatorState);
validate_response('GetPipelineRunNode', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRunNode', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRunNodeStep', 200, Body, ValidatorState) ->
    validate_response_body('PipelineStepImpl', 'PipelineStepImpl', Body, ValidatorState);
validate_response('GetPipelineRunNodeStep', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRunNodeStep', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRunNodeStepLog', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('GetPipelineRunNodeStepLog', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRunNodeStepLog', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRunNodeSteps', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineStepImpl', Body, ValidatorState);
validate_response('GetPipelineRunNodeSteps', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRunNodeSteps', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRunNodes', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineRunNode', Body, ValidatorState);
validate_response('GetPipelineRunNodes', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRunNodes', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelineRuns', 200, Body, ValidatorState) ->
    validate_response_body('list', 'PipelineRun', Body, ValidatorState);
validate_response('GetPipelineRuns', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelineRuns', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetPipelines', 200, Body, ValidatorState) ->
    validate_response_body('list', 'Pipeline', Body, ValidatorState);
validate_response('GetPipelines', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetPipelines', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetSCM', 200, Body, ValidatorState) ->
    validate_response_body('GithubScm', 'GithubScm', Body, ValidatorState);
validate_response('GetSCM', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetSCM', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetSCMOrganisationRepositories', 200, Body, ValidatorState) ->
    validate_response_body('list', 'GithubOrganization', Body, ValidatorState);
validate_response('GetSCMOrganisationRepositories', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetSCMOrganisationRepositories', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetSCMOrganisationRepository', 200, Body, ValidatorState) ->
    validate_response_body('list', 'GithubOrganization', Body, ValidatorState);
validate_response('GetSCMOrganisationRepository', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetSCMOrganisationRepository', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetSCMOrganisations', 200, Body, ValidatorState) ->
    validate_response_body('list', 'GithubOrganization', Body, ValidatorState);
validate_response('GetSCMOrganisations', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetSCMOrganisations', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetUser', 200, Body, ValidatorState) ->
    validate_response_body('User', 'User', Body, ValidatorState);
validate_response('GetUser', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetUser', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetUserFavorites', 200, Body, ValidatorState) ->
    validate_response_body('list', 'FavoriteImpl', Body, ValidatorState);
validate_response('GetUserFavorites', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetUserFavorites', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetUsers', 200, Body, ValidatorState) ->
    validate_response_body('User', 'User', Body, ValidatorState);
validate_response('GetUsers', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetUsers', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostPipelineRun', 200, Body, ValidatorState) ->
    validate_response_body('QueueItemImpl', 'QueueItemImpl', Body, ValidatorState);
validate_response('PostPipelineRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostPipelineRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PostPipelineRuns', 200, Body, ValidatorState) ->
    validate_response_body('QueueItemImpl', 'QueueItemImpl', Body, ValidatorState);
validate_response('PostPipelineRuns', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PostPipelineRuns', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PutPipelineFavorite', 200, Body, ValidatorState) ->
    validate_response_body('FavoriteImpl', 'FavoriteImpl', Body, ValidatorState);
validate_response('PutPipelineFavorite', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PutPipelineFavorite', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('PutPipelineRun', 200, Body, ValidatorState) ->
    validate_response_body('PipelineRun', 'PipelineRun', Body, ValidatorState);
validate_response('PutPipelineRun', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('PutPipelineRun', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('Search', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('Search', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('Search', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('SearchClasses', 200, Body, ValidatorState) ->
    validate_response_body('binary', 'string', Body, ValidatorState);
validate_response('SearchClasses', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('SearchClasses', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);


validate_response('GetComputer', 200, Body, ValidatorState) ->
    validate_response_body('ComputerSet', 'ComputerSet', Body, ValidatorState);
validate_response('GetComputer', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetComputer', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJenkins', 200, Body, ValidatorState) ->
    validate_response_body('Hudson', 'Hudson', Body, ValidatorState);
validate_response('GetJenkins', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetJenkins', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetJob', 200, Body, ValidatorState) ->
    validate_response_body('FreeStyleProject', 'FreeStyleProject', Body, ValidatorState);
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
    validate_response_body('FreeStyleBuild', 'FreeStyleBuild', Body, ValidatorState);
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
    validate_response_body('Queue', 'Queue', Body, ValidatorState);
validate_response('GetQueue', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetQueue', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetQueueItem', 200, Body, ValidatorState) ->
    validate_response_body('Queue', 'Queue', Body, ValidatorState);
validate_response('GetQueueItem', 401, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);
validate_response('GetQueueItem', 403, Body, ValidatorState) ->
    validate_response_body('', '', Body, ValidatorState);

validate_response('GetView', 200, Body, ValidatorState) ->
    validate_response_body('ListView', 'ListView', Body, ValidatorState);
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
        {ok, openapi_utils:to_int(Value)}
    catch
        error:badarg ->
            validation_error(Rule, Name)
    end;

validate(Rule = {type, 'float'}, Name, Value, _ValidatorState) ->
    try
        {ok, openapi_utils:to_float(Value)}
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
    case Value =< Max of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {exclusive_max, ExclusiveMax}, Name, Value, _ValidatorState) ->
    case Value > ExclusiveMax of
        true -> ok;
        false -> validation_error(Rule, Name)
    end;

validate(Rule = {min, Min}, Name, Value, _ValidatorState) ->
    case Value >= Min of
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
    Definition =  list_to_binary("#/components/schemas/" ++ openapi_utils:to_list(Name)),
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

-spec get_value(body | qs_val | header | binding, Name :: any(), Req0 :: cowboy_req:req()) ->
    {Value :: any(), Req :: cowboy_req:req()} |
    {error, Reason :: any(), Req :: cowboy_req:req()}.
get_value(body, _Name, Req0) ->
    {ok, Body, Req} = cowboy_req:read_body(Req0),
    case prepare_body(Body) of
        {error, Reason} ->
            {error, Reason, Req};
        Value ->
            {Value, Req}
    end;

get_value(qs_val, Name, Req) ->
    QS = cowboy_req:parse_qs(Req),
    Value = openapi_utils:get_opt(openapi_utils:to_qs(Name), QS),
    {Value, Req};

get_value(header, Name, Req) ->
    Headers = cowboy_req:headers(Req),
    Value =  maps:get(openapi_utils:to_header(Name), Headers, undefined),
    {Value, Req};

get_value(binding, Name, Req) ->
    Value = cowboy_req:binding(openapi_utils:to_binding(Name), Req),
    {Value, Req}.

prepare_body(Body) ->
    case Body of
        <<"">> -> <<"">>;
        _ ->
            try
                jsx:decode(Body, [return_maps])
            catch
              error:_ ->
                {error, {invalid_body, not_json, Body}}
            end
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
    list_to_binary(string:to_lower(openapi_utils:to_list(V))).
