part of swagger.api;


@Entity()
class GithubOrganizationlinks {
  
  @Property(name: 'repositories')
  Link repositories = null;
  

  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GithubOrganizationlinks();

  @override
  String toString()  {
    return 'GithubOrganizationlinks[repositories=$repositories, self=$self, _class=$_class, ]';
  }

}

