namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class PipelineRunImpl 
{
    public string Class { get; set; }
    public PipelineRunImpllinks Links { get; set; }
    public int DurationInMillis { get; set; }
    public string EnQueueTime { get; set; }
    public string EndTime { get; set; }
    public int EstimatedDurationInMillis { get; set; }
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


