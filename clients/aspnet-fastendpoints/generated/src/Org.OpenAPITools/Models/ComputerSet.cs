namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class ComputerSet 
{
    public string Class { get; set; }
    public int BusyExecutors { get; set; }
    public List<HudsonMasterComputer> Computer { get; set; }
    public string DisplayName { get; set; }
    public int TotalExecutors { get; set; }
}


