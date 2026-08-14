namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class FreeStyleProject 
{
    public string Class { get; set; }
    public string Name { get; set; }
    public string Url { get; set; }
    public string Color { get; set; }
    public List<FreeStyleProjectactions> Actions { get; set; }
    public string Description { get; set; }
    public string DisplayName { get; set; }
    public string DisplayNameOrNull { get; set; }
    public string FullDisplayName { get; set; }
    public string FullName { get; set; }
    public bool Buildable { get; set; }
    public List<FreeStyleBuild> Builds { get; set; }
    public FreeStyleBuild FirstBuild { get; set; }
    public List<FreeStyleProjecthealthReport> HealthReport { get; set; }
    public bool InQueue { get; set; }
    public bool KeepDependencies { get; set; }
    public FreeStyleBuild LastBuild { get; set; }
    public FreeStyleBuild LastCompletedBuild { get; set; }
    public string LastFailedBuild { get; set; }
    public FreeStyleBuild LastStableBuild { get; set; }
    public FreeStyleBuild LastSuccessfulBuild { get; set; }
    public string LastUnstableBuild { get; set; }
    public string LastUnsuccessfulBuild { get; set; }
    public int NextBuildNumber { get; set; }
    public string QueueItem { get; set; }
    public bool ConcurrentBuild { get; set; }
    public NullSCM Scm { get; set; }
}


