namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class Pipeline 
{
    public string Class { get; set; }
    public string Organization { get; set; }
    public string Name { get; set; }
    public string DisplayName { get; set; }
    public string FullName { get; set; }
    public int WeatherScore { get; set; }
    public int EstimatedDurationInMillis { get; set; }
    public PipelinelatestRun LatestRun { get; set; }
}


