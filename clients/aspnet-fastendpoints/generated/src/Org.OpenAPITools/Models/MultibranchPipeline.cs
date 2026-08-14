namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class MultibranchPipeline 
{
    public string DisplayName { get; set; }
    public int EstimatedDurationInMillis { get; set; }
    public string LatestRun { get; set; }
    public string Name { get; set; }
    public string Organization { get; set; }
    public int WeatherScore { get; set; }
    public List<string> BranchNames { get; set; }
    public int NumberOfFailingBranches { get; set; }
    public int NumberOfFailingPullRequests { get; set; }
    public int NumberOfSuccessfulBranches { get; set; }
    public int NumberOfSuccessfulPullRequests { get; set; }
    public int TotalNumberOfBranches { get; set; }
    public int TotalNumberOfPullRequests { get; set; }
    public string Class { get; set; }
}


