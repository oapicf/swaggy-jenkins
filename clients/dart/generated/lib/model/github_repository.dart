part of swagger.api;


@Entity()
class GithubRepository {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  GithubRepositorylinks links = null;
  

  @Property(name: 'defaultBranch')
  String defaultBranch = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'permissions')
  GithubRepositorypermissions permissions = null;
  

  @Property(name: 'private')
  bool private = null;
  

  @Property(name: 'fullName')
  String fullName = null;
  
  GithubRepository();

  @override
  String toString()  {
    return 'GithubRepository[_class=$_class, links=$links, defaultBranch=$defaultBranch, description=$description, name=$name, permissions=$permissions, private=$private, fullName=$fullName, ]';
  }

}

