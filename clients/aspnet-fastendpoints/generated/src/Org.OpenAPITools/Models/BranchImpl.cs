namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class BranchImpl 
{
    public string Class { get; set; }
    public string DisplayName { get; set; }
    public int EstimatedDurationInMillis { get; set; }
    public string FullDisplayName { get; set; }
    public string FullName { get; set; }
    public string Name { get; set; }
    public string Organization { get; set; }
    public List<StringParameterDefinition> Parameters { get; set; }
    public BranchImplpermissions Permissions { get; set; }
    public int WeatherScore { get; set; }
    public string PullRequest { get; set; }
    public BranchImpllinks Links { get; set; }
    public PipelineRunImpl LatestRun { get; set; }
}


