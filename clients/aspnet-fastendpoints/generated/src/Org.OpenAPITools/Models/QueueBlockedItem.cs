namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class QueueBlockedItem 
{
    public string Class { get; set; }
    public List<CauseAction> Actions { get; set; }
    public bool Blocked { get; set; }
    public bool Buildable { get; set; }
    public int Id { get; set; }
    public int InQueueSince { get; set; }
    public string Params { get; set; }
    public bool Stuck { get; set; }
    public FreeStyleProject Task { get; set; }
    public string Url { get; set; }
    public string Why { get; set; }
    public int BuildableStartMilliseconds { get; set; }
}


