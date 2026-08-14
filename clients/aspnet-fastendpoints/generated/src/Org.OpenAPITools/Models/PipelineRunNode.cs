namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class PipelineRunNode 
{
    public string Class { get; set; }
    public string DisplayName { get; set; }
    public int DurationInMillis { get; set; }
    public List<PipelineRunNodeedges> Edges { get; set; }
    public string Id { get; set; }
    public string Result { get; set; }
    public string StartTime { get; set; }
    public string State { get; set; }
}


