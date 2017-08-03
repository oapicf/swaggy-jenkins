part of swagger.api;


@Entity()
class GithubRepositories {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  GithubRepositorieslinks links = null;
  

  @Property(name: 'items')
  List<GithubRepository> items = [];
  

  @Property(name: 'lastPage')
  int lastPage = null;
  

  @Property(name: 'nextPage')
  int nextPage = null;
  

  @Property(name: 'pageSize')
  int pageSize = null;
  
  GithubRepositories();

  @override
  String toString()  {
    return 'GithubRepositories[_class=$_class, links=$links, items=$items, lastPage=$lastPage, nextPage=$nextPage, pageSize=$pageSize, ]';
  }

}

