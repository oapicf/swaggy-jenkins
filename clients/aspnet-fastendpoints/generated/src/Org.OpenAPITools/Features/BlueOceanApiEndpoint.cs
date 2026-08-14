using Org.OpenAPITools.Models;

namespace Org.OpenAPITools.Features;



/// <summary>
/// 
/// </summary>

public class DeletePipelineQueueItemEndpoint : FastEndpoints.Endpoint<DeletePipelineQueueItemRequest>
{
    public override void Configure()
    {
        Delete("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Queue, "Name of the queue item");
            s.Responses[200] = "Successfully deleted queue item";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(DeletePipelineQueueItemRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetAuthenticatedUserEndpoint : FastEndpoints.Endpoint<GetAuthenticatedUserRequest, User>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/user/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.Responses[200] = "Successfully retrieved authenticated user details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetAuthenticatedUserRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetClassesEndpoint : FastEndpoints.Endpoint<GetClassesRequest, string>
{
    public override void Configure()
    {
        Get("/blue/rest/classes/{class}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.VarClass, "Name of the class");
            s.Responses[200] = "Successfully retrieved class names";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetClassesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetJsonWebKeyEndpoint : FastEndpoints.Endpoint<GetJsonWebKeyRequest, string>
{
    public override void Configure()
    {
        Get("/jwt-auth/jwks/{key}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Key, "Key ID received as part of JWT header field kid");
            s.Responses[200] = "Successfully retrieved JWT token";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetJsonWebKeyRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetJsonWebTokenEndpoint : FastEndpoints.Endpoint<GetJsonWebTokenRequest, string>
{
    public override void Configure()
    {
        Get("/jwt-auth/token");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.ExpiryTimeInMins, "Token expiry time in minutes, default: 30 minutes");
            s.RequestParam(r => r.MaxExpiryTimeInMins, "Maximum token expiry time in minutes, default: 480 minutes");
            s.Responses[200] = "Successfully retrieved JWT token";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetJsonWebTokenRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetOrganisationEndpoint : FastEndpoints.Endpoint<GetOrganisationRequest, Organisation>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.Responses[200] = "Successfully retrieved pipeline details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Pipeline cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetOrganisationRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetOrganisationsEndpoint : FastEndpoints.EndpointWithoutRequest<List<Organisation>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.Responses[200] = "Successfully retrieved pipelines details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineEndpoint : FastEndpoints.Endpoint<GetPipelineRequest, Pipeline>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.Responses[200] = "Successfully retrieved pipeline details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Pipeline cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetPipelineRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineActivitiesEndpoint : FastEndpoints.Endpoint<GetPipelineActivitiesRequest, List<PipelineActivity>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.Responses[200] = "Successfully retrieved all activities details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineActivitiesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineBranchEndpoint : FastEndpoints.Endpoint<GetPipelineBranchRequest, BranchImpl>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Branch, "Name of the branch");
            s.Responses[200] = "Successfully retrieved branch details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineBranchRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineBranchRunEndpoint : FastEndpoints.Endpoint<GetPipelineBranchRunRequest, PipelineRun>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Branch, "Name of the branch");
            s.RequestParam(r => r.Run, "Name of the run");
            s.Responses[200] = "Successfully retrieved run details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineBranchRunRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineBranchesEndpoint : FastEndpoints.Endpoint<GetPipelineBranchesRequest, MultibranchPipeline>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.Responses[200] = "Successfully retrieved all branches details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineBranchesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineFolderEndpoint : FastEndpoints.Endpoint<GetPipelineFolderRequest, PipelineFolderImpl>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{folder}/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Folder, "Name of the folder");
            s.Responses[200] = "Successfully retrieved folder details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineFolderRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineFolderPipelineEndpoint : FastEndpoints.Endpoint<GetPipelineFolderPipelineRequest, PipelineImpl>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Folder, "Name of the folder");
            s.Responses[200] = "Successfully retrieved pipeline details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineFolderPipelineRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineQueueEndpoint : FastEndpoints.Endpoint<GetPipelineQueueRequest, List<QueueItemImpl>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.Responses[200] = "Successfully retrieved queue details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineQueueRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunEndpoint : FastEndpoints.Endpoint<GetPipelineRunRequest, PipelineRun>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.Responses[200] = "Successfully retrieved run details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunLogEndpoint : FastEndpoints.Endpoint<GetPipelineRunLogRequest, string>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.RequestParam(r => r.Start, "Start position of the log");
            s.RequestParam(r => r.Download, "Set to true in order to download the file, otherwise it&#39;s passed as a response body");
            s.Responses[200] = "Successfully retrieved pipeline run log";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunLogRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunNodeEndpoint : FastEndpoints.Endpoint<GetPipelineRunNodeRequest, PipelineRunNode>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.RequestParam(r => r.Node, "Name of the node");
            s.Responses[200] = "Successfully retrieved run node details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunNodeRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunNodeStepEndpoint : FastEndpoints.Endpoint<GetPipelineRunNodeStepRequest, PipelineStepImpl>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.RequestParam(r => r.Node, "Name of the node");
            s.RequestParam(r => r.Step, "Name of the step");
            s.Responses[200] = "Successfully retrieved run node step details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunNodeStepRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunNodeStepLogEndpoint : FastEndpoints.Endpoint<GetPipelineRunNodeStepLogRequest, string>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.RequestParam(r => r.Node, "Name of the node");
            s.RequestParam(r => r.Step, "Name of the step");
            s.Responses[200] = "Successfully retrieved pipeline run node step log";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunNodeStepLogRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunNodeStepsEndpoint : FastEndpoints.Endpoint<GetPipelineRunNodeStepsRequest, List<PipelineStepImpl>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.RequestParam(r => r.Node, "Name of the node");
            s.Responses[200] = "Successfully retrieved run node steps details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunNodeStepsRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunNodesEndpoint : FastEndpoints.Endpoint<GetPipelineRunNodesRequest, List<PipelineRunNode>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.Responses[200] = "Successfully retrieved run nodes details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunNodesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelineRunsEndpoint : FastEndpoints.Endpoint<GetPipelineRunsRequest, List<PipelineRun>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.Responses[200] = "Successfully retrieved runs details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelineRunsRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetPipelinesEndpoint : FastEndpoints.Endpoint<GetPipelinesRequest, List<Pipeline>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/pipelines/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.Responses[200] = "Successfully retrieved pipelines details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetPipelinesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetSCMEndpoint : FastEndpoints.Endpoint<GetSCMRequest, GithubScm>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/scm/{scm}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Scm, "Name of SCM");
            s.Responses[200] = "Successfully retrieved SCM details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetSCMRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetSCMOrganisationRepositoriesEndpoint : FastEndpoints.Endpoint<GetSCMOrganisationRepositoriesRequest, List<GithubOrganization>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Scm, "Name of SCM");
            s.RequestParam(r => r.ScmOrganisation, "Name of the SCM organization");
            s.RequestParam(r => r.CredentialId, "Credential ID");
            s.RequestParam(r => r.PageSize, "Number of items in a page");
            s.RequestParam(r => r.PageNumber, "Page number");
            s.Responses[200] = "Successfully retrieved SCM organization repositories details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetSCMOrganisationRepositoriesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetSCMOrganisationRepositoryEndpoint : FastEndpoints.Endpoint<GetSCMOrganisationRepositoryRequest, List<GithubOrganization>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Scm, "Name of SCM");
            s.RequestParam(r => r.ScmOrganisation, "Name of the SCM organization");
            s.RequestParam(r => r.Repository, "Name of the SCM repository");
            s.RequestParam(r => r.CredentialId, "Credential ID");
            s.Responses[200] = "Successfully retrieved SCM organizations details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetSCMOrganisationRepositoryRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetSCMOrganisationsEndpoint : FastEndpoints.Endpoint<GetSCMOrganisationsRequest, List<GithubOrganization>>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/scm/{scm}/organizations");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Scm, "Name of SCM");
            s.RequestParam(r => r.CredentialId, "Credential ID");
            s.Responses[200] = "Successfully retrieved SCM organizations details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetSCMOrganisationsRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetUserEndpoint : FastEndpoints.Endpoint<GetUserRequest, User>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/users/{user}");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.User, "Name of the user");
            s.Responses[200] = "Successfully retrieved users details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetUserRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetUserFavoritesEndpoint : FastEndpoints.Endpoint<GetUserFavoritesRequest, List<FavoriteImpl>>
{
    public override void Configure()
    {
        Get("/blue/rest/users/{user}/favorites");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.User, "Name of the user");
            s.Responses[200] = "Successfully retrieved users favorites details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetUserFavoritesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class GetUsersEndpoint : FastEndpoints.Endpoint<GetUsersRequest, User>
{
    public override void Configure()
    {
        Get("/blue/rest/organizations/{organization}/users/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.Responses[200] = "Successfully retrieved users details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetUsersRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class PostPipelineRunEndpoint : FastEndpoints.Endpoint<PostPipelineRunRequest, QueueItemImpl>
{
    public override void Configure()
    {
        Post("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.Responses[200] = "Successfully replayed a pipeline run";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(PostPipelineRunRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class PostPipelineRunsEndpoint : FastEndpoints.Endpoint<PostPipelineRunsRequest, QueueItemImpl>
{
    public override void Configure()
    {
        Post("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.Responses[200] = "Successfully started a build";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(PostPipelineRunsRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class PutPipelineFavoriteEndpoint : FastEndpoints.Endpoint<PutPipelineFavoriteRequest, FavoriteImpl>
{
    public override void Configure()
    {
        Put("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.body, "Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite");
            s.Responses[200] = "Successfully favorited/unfavorited a pipeline";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(PutPipelineFavoriteRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class PutPipelineRunEndpoint : FastEndpoints.Endpoint<PutPipelineRunRequest, PipelineRun>
{
    public override void Configure()
    {
        Put("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Organization, "Name of the organization");
            s.RequestParam(r => r.Pipeline, "Name of the pipeline");
            s.RequestParam(r => r.Run, "Name of the run");
            s.RequestParam(r => r.Blocking, "Set to true to make blocking stop, default: false");
            s.RequestParam(r => r.TimeOutInSecs, "Timeout in seconds, default: 10 seconds");
            s.Responses[200] = "Successfully stopped a build";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(PutPipelineRunRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class SearchEndpoint : FastEndpoints.Endpoint<SearchRequest, string>
{
    public override void Configure()
    {
        Get("/blue/rest/search/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Q, "Query string");
            s.Responses[200] = "Successfully retrieved search result";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(SearchRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}


/// <summary>
/// 
/// </summary>

public class SearchClassesEndpoint : FastEndpoints.Endpoint<SearchClassesRequest, string>
{
    public override void Configure()
    {
        Get("/blue/rest/classes/");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("blueOcean");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Q, "Query string containing an array of class names");
            s.Responses[200] = "Successfully retrieved search result";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(SearchClassesRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}

