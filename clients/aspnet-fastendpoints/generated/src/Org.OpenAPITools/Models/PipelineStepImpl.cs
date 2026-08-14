namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class PipelineStepImpl 
{
    public string Class { get; set; }
    public PipelineStepImpllinks Links { get; set; }
    public string DisplayName { get; set; }
    public int DurationInMillis { get; set; }
    public string Id { get; set; }
    public InputStepImpl Input { get; set; }
    public string Result { get; set; }
    public string StartTime { get; set; }
    public string State { get; set; }
}


