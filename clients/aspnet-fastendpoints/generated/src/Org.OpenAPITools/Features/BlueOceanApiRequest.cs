
using Org.OpenAPITools.Models;

namespace Org.OpenAPITools.Features;


public class DeletePipelineQueueItemRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the queue item
    /// </summary>
    [FastEndpoints.BindFrom("queue")]
    public string Queue { get; set; }
}
public class GetAuthenticatedUserRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
}
public class GetClassesRequest
{
    /// <summary>
    /// Name of the class
    /// </summary>
    [FastEndpoints.BindFrom("class")]
    public string VarClass { get; set; }
}
public class GetJsonWebKeyRequest
{
    /// <summary>
    /// Key ID received as part of JWT header field kid
    /// </summary>
    [FastEndpoints.BindFrom("key")]
    public int Key { get; set; }
}
public class GetJsonWebTokenRequest
{
    /// <summary>
    /// Token expiry time in minutes, default: 30 minutes
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("expiryTimeInMins")]
    public int? ExpiryTimeInMins { get; set; }
    /// <summary>
    /// Maximum token expiry time in minutes, default: 480 minutes
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("maxExpiryTimeInMins")]
    public int? MaxExpiryTimeInMins { get; set; }
}
public class GetOrganisationRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
}
public class GetOrganisationsRequest
{
}
public class GetPipelineRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
}
public class GetPipelineActivitiesRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
}
public class GetPipelineBranchRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the branch
    /// </summary>
    [FastEndpoints.BindFrom("branch")]
    public string Branch { get; set; }
}
public class GetPipelineBranchRunRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the branch
    /// </summary>
    [FastEndpoints.BindFrom("branch")]
    public string Branch { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
}
public class GetPipelineBranchesRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
}
public class GetPipelineFolderRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the folder
    /// </summary>
    [FastEndpoints.BindFrom("folder")]
    public string Folder { get; set; }
}
public class GetPipelineFolderPipelineRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the folder
    /// </summary>
    [FastEndpoints.BindFrom("folder")]
    public string Folder { get; set; }
}
public class GetPipelineQueueRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
}
public class GetPipelineRunRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
}
public class GetPipelineRunLogRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
    /// <summary>
    /// Start position of the log
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("start")]
    public int? Start { get; set; }
    /// <summary>
    /// Set to true in order to download the file, otherwise it&#39;s passed as a response body
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("download")]
    public bool? Download { get; set; }
}
public class GetPipelineRunNodeRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
    /// <summary>
    /// Name of the node
    /// </summary>
    [FastEndpoints.BindFrom("node")]
    public string Node { get; set; }
}
public class GetPipelineRunNodeStepRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
    /// <summary>
    /// Name of the node
    /// </summary>
    [FastEndpoints.BindFrom("node")]
    public string Node { get; set; }
    /// <summary>
    /// Name of the step
    /// </summary>
    [FastEndpoints.BindFrom("step")]
    public string Step { get; set; }
}
public class GetPipelineRunNodeStepLogRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
    /// <summary>
    /// Name of the node
    /// </summary>
    [FastEndpoints.BindFrom("node")]
    public string Node { get; set; }
    /// <summary>
    /// Name of the step
    /// </summary>
    [FastEndpoints.BindFrom("step")]
    public string Step { get; set; }
}
public class GetPipelineRunNodeStepsRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
    /// <summary>
    /// Name of the node
    /// </summary>
    [FastEndpoints.BindFrom("node")]
    public string Node { get; set; }
}
public class GetPipelineRunNodesRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
}
public class GetPipelineRunsRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
}
public class GetPipelinesRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
}
public class GetSCMRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of SCM
    /// </summary>
    [FastEndpoints.BindFrom("scm")]
    public string Scm { get; set; }
}
public class GetSCMOrganisationRepositoriesRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of SCM
    /// </summary>
    [FastEndpoints.BindFrom("scm")]
    public string Scm { get; set; }
    /// <summary>
    /// Name of the SCM organization
    /// </summary>
    [FastEndpoints.BindFrom("scmOrganisation")]
    public string ScmOrganisation { get; set; }
    /// <summary>
    /// Credential ID
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("credentialId")]
    public string? CredentialId { get; set; }
    /// <summary>
    /// Number of items in a page
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("pageSize")]
    public int? PageSize { get; set; }
    /// <summary>
    /// Page number
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("pageNumber")]
    public int? PageNumber { get; set; }
}
public class GetSCMOrganisationRepositoryRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of SCM
    /// </summary>
    [FastEndpoints.BindFrom("scm")]
    public string Scm { get; set; }
    /// <summary>
    /// Name of the SCM organization
    /// </summary>
    [FastEndpoints.BindFrom("scmOrganisation")]
    public string ScmOrganisation { get; set; }
    /// <summary>
    /// Name of the SCM repository
    /// </summary>
    [FastEndpoints.BindFrom("repository")]
    public string Repository { get; set; }
    /// <summary>
    /// Credential ID
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("credentialId")]
    public string? CredentialId { get; set; }
}
public class GetSCMOrganisationsRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of SCM
    /// </summary>
    [FastEndpoints.BindFrom("scm")]
    public string Scm { get; set; }
    /// <summary>
    /// Credential ID
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("credentialId")]
    public string? CredentialId { get; set; }
}
public class GetUserRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the user
    /// </summary>
    [FastEndpoints.BindFrom("user")]
    public string User { get; set; }
}
public class GetUserFavoritesRequest
{
    /// <summary>
    /// Name of the user
    /// </summary>
    [FastEndpoints.BindFrom("user")]
    public string User { get; set; }
}
public class GetUsersRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
}
public class PostPipelineRunRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
}
public class PostPipelineRunsRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
}
public class PutPipelineFavoriteRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite
    /// </summary>
    [FastEndpoints.FromBody]
    public bool body { get; set; }
}
public class PutPipelineRunRequest
{
    /// <summary>
    /// Name of the organization
    /// </summary>
    [FastEndpoints.BindFrom("organization")]
    public string Organization { get; set; }
    /// <summary>
    /// Name of the pipeline
    /// </summary>
    [FastEndpoints.BindFrom("pipeline")]
    public string Pipeline { get; set; }
    /// <summary>
    /// Name of the run
    /// </summary>
    [FastEndpoints.BindFrom("run")]
    public string Run { get; set; }
    /// <summary>
    /// Set to true to make blocking stop, default: false
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("blocking")]
    public string? Blocking { get; set; }
    /// <summary>
    /// Timeout in seconds, default: 10 seconds
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("timeOutInSecs")]
    public int? TimeOutInSecs { get; set; }
}
public class SearchRequest
{
    /// <summary>
    /// Query string
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("q")]
    public string Q { get; set; }
}
public class SearchClassesRequest
{
    /// <summary>
    /// Query string containing an array of class names
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("q")]
    public string Q { get; set; }
}


