part of swagger.api;


@Entity()
class GithubRepositorieslinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GithubRepositorieslinks();

  @override
  String toString()  {
    return 'GithubRepositorieslinks[self=$self, _class=$_class, ]';
  }

}

