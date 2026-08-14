namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class GithubRepository 
{
    public string Class { get; set; }
    public GithubRepositorylinks Links { get; set; }
    public string DefaultBranch { get; set; }
    public string Description { get; set; }
    public string Name { get; set; }
    public GithubRepositorypermissions Permissions { get; set; }
    public bool Private { get; set; }
    public string FullName { get; set; }
}


