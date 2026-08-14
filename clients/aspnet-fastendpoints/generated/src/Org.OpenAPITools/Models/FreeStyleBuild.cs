namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class FreeStyleBuild 
{
    public string Class { get; set; }
    public int Number { get; set; }
    public string Url { get; set; }
    public List<CauseAction> Actions { get; set; }
    public bool Building { get; set; }
    public string Description { get; set; }
    public string DisplayName { get; set; }
    public int Duration { get; set; }
    public int EstimatedDuration { get; set; }
    public string Executor { get; set; }
    public string FullDisplayName { get; set; }
    public string Id { get; set; }
    public bool KeepLog { get; set; }
    public int QueueId { get; set; }
    public string Result { get; set; }
    public int Timestamp { get; set; }
    public string BuiltOn { get; set; }
    public EmptyChangeLogSet ChangeSet { get; set; }
}


