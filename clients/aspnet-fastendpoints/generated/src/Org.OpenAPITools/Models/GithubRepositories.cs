namespace Org.OpenAPITools.Models;


/// <summary>
/// 
/// </summary>
public class GithubRepositories 
{
    public string Class { get; set; }
    public GithubRepositorieslinks Links { get; set; }
    public List<GithubRepository> Items { get; set; }
    public int LastPage { get; set; }
    public int NextPage { get; set; }
    public int PageSize { get; set; }
}


