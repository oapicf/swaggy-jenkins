using Org.OpenAPITools.Models;

namespace Org.OpenAPITools.Features;



/// <summary>
/// 
/// </summary>

public class GetComputerEndpoint : FastEndpoints.Endpoint<GetComputerRequest, ComputerSet>
{
    public override void Configure()
    {
        Get("/computer/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Depth, "Recursion depth in response model");
            s.Responses[200] = "Successfully retrieved computer details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetComputerRequest req, CancellationToken ct)
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

public class GetJenkinsEndpoint : FastEndpoints.EndpointWithoutRequest<Hudson>
{
    public override void Configure()
    {
        Get("/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.Responses[200] = "Successfully retrieved Jenkins details";
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

public class GetJobEndpoint : FastEndpoints.Endpoint<GetJobRequest, FreeStyleProject>
{
    public override void Configure()
    {
        Get("/job/{name}/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.Responses[200] = "Successfully retrieved job details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetJobRequest req, CancellationToken ct)
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

public class GetJobConfigEndpoint : FastEndpoints.Endpoint<GetJobConfigRequest, string>
{
    public override void Configure()
    {
        Get("/job/{name}/config.xml");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.Responses[200] = "Successfully retrieved job configuration in config.xml format";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetJobConfigRequest req, CancellationToken ct)
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

public class GetJobLastBuildEndpoint : FastEndpoints.Endpoint<GetJobLastBuildRequest, FreeStyleBuild>
{
    public override void Configure()
    {
        Get("/job/{name}/lastBuild/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.Responses[200] = "Successfully retrieved job&#39;s last build details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetJobLastBuildRequest req, CancellationToken ct)
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

public class GetJobProgressiveTextEndpoint : FastEndpoints.Endpoint<GetJobProgressiveTextRequest>
{
    public override void Configure()
    {
        Get("/job/{name}/{number}/logText/progressiveText");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.RequestParam(r => r.Number, "Build number");
            s.RequestParam(r => r.Start, "Starting point of progressive text output");
            s.Responses[200] = "Successfully retrieved job&#39;s build progressive text output";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetJobProgressiveTextRequest req, CancellationToken ct)
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

public class GetQueueEndpoint : FastEndpoints.EndpointWithoutRequest<Queue>
{
    public override void Configure()
    {
        Get("/queue/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.Responses[200] = "Successfully retrieved queue details";
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

public class GetQueueItemEndpoint : FastEndpoints.Endpoint<GetQueueItemRequest, Queue>
{
    public override void Configure()
    {
        Get("/queue/item/{number}/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Number, "Queue number");
            s.Responses[200] = "Successfully retrieved queued item details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(GetQueueItemRequest req, CancellationToken ct)
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

public class GetViewEndpoint : FastEndpoints.Endpoint<GetViewRequest, ListView>
{
    public override void Configure()
    {
        Get("/view/{name}/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the view");
            s.Responses[200] = "Successfully retrieved view details";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "View cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetViewRequest req, CancellationToken ct)
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

public class GetViewConfigEndpoint : FastEndpoints.Endpoint<GetViewConfigRequest, string>
{
    public override void Configure()
    {
        Get("/view/{name}/config.xml");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the view");
            s.Responses[200] = "Successfully retrieved view configuration in config.xml format";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "View cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(GetViewConfigRequest req, CancellationToken ct)
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

public class HeadJenkinsEndpoint : FastEndpoints.EndpointWithoutRequest
{
    public override void Configure()
    {
        Head("/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.Responses[200] = "Successfully retrieved Jenkins headers";
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

public class PostCreateItemEndpoint : FastEndpoints.Endpoint<PostCreateItemRequest>
{
    public override void Configure()
    {
        Post("/createItem");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 400);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the new job");
            s.RequestParam(r => r.From, "Existing job to copy from");
            s.RequestParam(r => r.Mode, "Set to &#39;copy&#39; for copying an existing job");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.RequestParam(r => r.ContentType, "Content type header application/xml");
            s.RequestParam(r => r.body, "Job configuration in config.xml format");
            s.Responses[200] = "Successfully created a new job";
            s.Responses[400] = "An error has occurred - error message is embedded inside the HTML response";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(PostCreateItemRequest req, CancellationToken ct)
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

public class PostCreateViewEndpoint : FastEndpoints.Endpoint<PostCreateViewRequest>
{
    public override void Configure()
    {
        Post("/createView");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 400);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the new view");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.RequestParam(r => r.ContentType, "Content type header application/xml");
            s.RequestParam(r => r.body, "View configuration in config.xml format");
            s.Responses[200] = "Successfully created the view";
            s.Responses[400] = "An error has occurred - error message is embedded inside the HTML response";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
        });
    }

    public override async Task HandleAsync(PostCreateViewRequest req, CancellationToken ct)
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

public class PostJobBuildEndpoint : FastEndpoints.Endpoint<PostJobBuildRequest>
{
    public override void Configure()
    {
        Post("/job/{name}/build");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.RequestParam(r => r.Json, "");
            s.RequestParam(r => r.Token, "");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.Responses[200] = "Successfully built the job (backward compatibility for older versions of Jenkins)";
            s.Responses[201] = "Successfully built the job";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(PostJobBuildRequest req, CancellationToken ct)
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

public class PostJobConfigEndpoint : FastEndpoints.Endpoint<PostJobConfigRequest>
{
    public override void Configure()
    {
        Post("/job/{name}/config.xml");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 400);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.RequestParam(r => r.body, "Job configuration in config.xml format");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.Responses[200] = "Successfully retrieved job configuration in config.xml format";
            s.Responses[400] = "An error has occurred - error message is embedded inside the HTML response";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(PostJobConfigRequest req, CancellationToken ct)
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

public class PostJobDeleteEndpoint : FastEndpoints.Endpoint<PostJobDeleteRequest>
{
    public override void Configure()
    {
        Post("/job/{name}/doDelete");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.Responses[200] = "Successfully deleted the job";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(PostJobDeleteRequest req, CancellationToken ct)
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

public class PostJobDisableEndpoint : FastEndpoints.Endpoint<PostJobDisableRequest>
{
    public override void Configure()
    {
        Post("/job/{name}/disable");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.Responses[200] = "Successfully disabled the job";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(PostJobDisableRequest req, CancellationToken ct)
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

public class PostJobEnableEndpoint : FastEndpoints.Endpoint<PostJobEnableRequest>
{
    public override void Configure()
    {
        Post("/job/{name}/enable");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.Responses[200] = "Successfully enabled the job";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(PostJobEnableRequest req, CancellationToken ct)
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

public class PostJobLastBuildStopEndpoint : FastEndpoints.Endpoint<PostJobLastBuildStopRequest>
{
    public override void Configure()
    {
        Post("/job/{name}/lastBuild/stop");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the job");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.Responses[200] = "Successfully stopped the job";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "Job cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(PostJobLastBuildStopRequest req, CancellationToken ct)
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

public class PostViewConfigEndpoint : FastEndpoints.Endpoint<PostViewConfigRequest>
{
    public override void Configure()
    {
        Post("/view/{name}/config.xml");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("remoteAccess");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 400);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 404);
        });

        Summary(s => {
            s.Summary = "";
            s.RequestParam(r => r.Name, "Name of the view");
            s.RequestParam(r => r.body, "View configuration in config.xml format");
            s.RequestParam(r => r.JenkinsCrumb, "CSRF protection token");
            s.Responses[200] = "Successfully updated view configuration";
            s.Responses[400] = "An error has occurred - error message is embedded inside the HTML response";
            s.Responses[401] = "Authentication failed - incorrect username and/or password";
            s.Responses[403] = "Jenkins requires authentication - please set username and password";
            s.Responses[404] = "View cannot be found on Jenkins instance";
        });
    }

    public override async Task HandleAsync(PostViewConfigRequest req, CancellationToken ct)
    {
        //Response = new()
        //{
            //...
        //};
        //return Task.CompletedTask;
    }
}

