part of swagger.api;


@Entity()
class GithubRespositoryContainer {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  GithubRespositoryContainerlinks links = null;
  

  @Property(name: 'repositories')
  GithubRepositories repositories = null;
  
  GithubRespositoryContainer();

  @override
  String toString()  {
    return 'GithubRespositoryContainer[_class=$_class, links=$links, repositories=$repositories, ]';
  }

}

