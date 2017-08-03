part of swagger.api;


@Entity()
class GithubOrganization {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  GithubOrganizationlinks links = null;
  

  @Property(name: 'jenkinsOrganizationPipeline')
  bool jenkinsOrganizationPipeline = null;
  

  @Property(name: 'name')
  String name = null;
  
  GithubOrganization();

  @override
  String toString()  {
    return 'GithubOrganization[_class=$_class, links=$links, jenkinsOrganizationPipeline=$jenkinsOrganizationPipeline, name=$name, ]';
  }

}

