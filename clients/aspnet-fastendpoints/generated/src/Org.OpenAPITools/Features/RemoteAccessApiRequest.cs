
using Org.OpenAPITools.Models;

namespace Org.OpenAPITools.Features;


public class GetComputerRequest
{
    /// <summary>
    /// Recursion depth in response model
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("depth")]
    public int Depth { get; set; }
}
public class GetJenkinsRequest
{
}
public class GetJobRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
}
public class GetJobConfigRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
}
public class GetJobLastBuildRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
}
public class GetJobProgressiveTextRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// Build number
    /// </summary>
    [FastEndpoints.BindFrom("number")]
    public string Number { get; set; }
    /// <summary>
    /// Starting point of progressive text output
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("start")]
    public string Start { get; set; }
}
public class GetQueueRequest
{
}
public class GetQueueItemRequest
{
    /// <summary>
    /// Queue number
    /// </summary>
    [FastEndpoints.BindFrom("number")]
    public string Number { get; set; }
}
public class GetViewRequest
{
    /// <summary>
    /// Name of the view
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
}
public class GetViewConfigRequest
{
    /// <summary>
    /// Name of the view
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
}
public class HeadJenkinsRequest
{
}
public class PostCreateItemRequest
{
    /// <summary>
    /// Name of the new job
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// Existing job to copy from
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("from")]
    public string? From { get; set; }
    /// <summary>
    /// Set to &#39;copy&#39; for copying an existing job
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("mode")]
    public string? Mode { get; set; }
    /// <summary>
    /// Job configuration in config.xml format
    /// </summary>
    [FastEndpoints.FromBody]
    public string? body { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
    /// <summary>
    /// Content type header application/xml
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? ContentType { get; set; }
}
public class PostCreateViewRequest
{
    /// <summary>
    /// Name of the new view
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// View configuration in config.xml format
    /// </summary>
    [FastEndpoints.FromBody]
    public string? body { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
    /// <summary>
    /// Content type header application/xml
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? ContentType { get; set; }
}
public class PostJobBuildRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// 
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("json")]
    public string Json { get; set; }
    /// <summary>
    /// 
    /// </summary>
    [FastEndpoints.QueryParam, FastEndpoints.BindFrom("token")]
    public string? Token { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
}
public class PostJobConfigRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// Job configuration in config.xml format
    /// </summary>
    [FastEndpoints.FromBody]
    public string body { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
}
public class PostJobDeleteRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
}
public class PostJobDisableRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
}
public class PostJobEnableRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
}
public class PostJobLastBuildStopRequest
{
    /// <summary>
    /// Name of the job
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
}
public class PostViewConfigRequest
{
    /// <summary>
    /// Name of the view
    /// </summary>
    [FastEndpoints.BindFrom("name")]
    public string Name { get; set; }
    /// <summary>
    /// View configuration in config.xml format
    /// </summary>
    [FastEndpoints.FromBody]
    public string body { get; set; }
    /// <summary>
    /// CSRF protection token
    /// </summary>
    [FastEndpoints.FromHeader]
    public string? JenkinsCrumb { get; set; }
}


