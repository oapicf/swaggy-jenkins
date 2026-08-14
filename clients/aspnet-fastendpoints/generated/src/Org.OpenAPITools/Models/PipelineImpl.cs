namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class PipelineImpl 
{
    public string Class { get; set; }
    public string DisplayName { get; set; }
    public int EstimatedDurationInMillis { get; set; }
    public string FullName { get; set; }
    public string LatestRun { get; set; }
    public string Name { get; set; }
    public string Organization { get; set; }
    public int WeatherScore { get; set; }
    public PipelineImpllinks Links { get; set; }
}


