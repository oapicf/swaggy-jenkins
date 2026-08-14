namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class PipelineBranchesitem 
{
    public string DisplayName { get; set; }
    public int EstimatedDurationInMillis { get; set; }
    public string Name { get; set; }
    public int WeatherScore { get; set; }
    public PipelineBranchesitemlatestRun LatestRun { get; set; }
    public string Organization { get; set; }
    public PipelineBranchesitempullRequest PullRequest { get; set; }
    public int TotalNumberOfPullRequests { get; set; }
    public string Class { get; set; }
}


