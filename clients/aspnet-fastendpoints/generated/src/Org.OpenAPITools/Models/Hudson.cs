namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class Hudson 
{
    public string Class { get; set; }
    public List<HudsonassignedLabels> AssignedLabels { get; set; }
    public string Mode { get; set; }
    public string NodeDescription { get; set; }
    public string NodeName { get; set; }
    public int NumExecutors { get; set; }
    public string Description { get; set; }
    public List<FreeStyleProject> Jobs { get; set; }
    public AllView PrimaryView { get; set; }
    public bool QuietingDown { get; set; }
    public int SlaveAgentPort { get; set; }
    public UnlabeledLoadStatistics UnlabeledLoad { get; set; }
    public bool UseCrumbs { get; set; }
    public bool UseSecurity { get; set; }
    public List<AllView> Views { get; set; }
}


