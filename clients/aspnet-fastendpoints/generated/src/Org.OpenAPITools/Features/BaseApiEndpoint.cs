using Org.OpenAPITools.Models;

namespace Org.OpenAPITools.Features;



/// <summary>
/// 
/// </summary>

public class GetCrumbEndpoint : FastEndpoints.EndpointWithoutRequest<DefaultCrumbIssuer>
{
    public override void Configure()
    {
        Get("/crumbIssuer/api/json");
        
        
        AllowAnonymous();
        
        Description(x =>
        {
            x.WithTags("base");
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 401);
            FastEndpoints.RouteHandlerBuilderExtensions.ProducesProblemFE(x, 403);
        });

        Summary(s => {
            s.Summary = "";
            s.Responses[200] = "Successfully retrieved CSRF protection token";
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

