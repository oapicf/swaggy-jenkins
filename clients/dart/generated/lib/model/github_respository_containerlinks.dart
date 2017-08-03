part of swagger.api;


@Entity()
class GithubRespositoryContainerlinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GithubRespositoryContainerlinks();

  @override
  String toString()  {
    return 'GithubRespositoryContainerlinks[self=$self, _class=$_class, ]';
  }

}

