part of swagger.api;


@Entity()
class GithubRepositorylinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GithubRepositorylinks();

  @override
  String toString()  {
    return 'GithubRepositorylinks[self=$self, _class=$_class, ]';
  }

}

