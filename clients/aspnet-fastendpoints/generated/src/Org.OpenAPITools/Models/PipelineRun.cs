namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class PipelineRun 
{
    public string Class { get; set; }
    public List<PipelineRunartifacts> Artifacts { get; set; }
    public int DurationInMillis { get; set; }
    public int EstimatedDurationInMillis { get; set; }
    public string EnQueueTime { get; set; }
    public string EndTime { get; set; }
    public string Id { get; set; }
    public string Organization { get; set; }
    public string Pipeline { get; set; }
    public string Result { get; set; }
    public string RunSummary { get; set; }
    public string StartTime { get; set; }
    public string State { get; set; }
    public string Type { get; set; }
    public string CommitId { get; set; }
}


