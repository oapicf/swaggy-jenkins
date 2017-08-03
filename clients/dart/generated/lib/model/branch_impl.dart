part of swagger.api;


@Entity()
class BranchImpl {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'estimatedDurationInMillis')
  int estimatedDurationInMillis = null;
  

  @Property(name: 'fullDisplayName')
  String fullDisplayName = null;
  

  @Property(name: 'fullName')
  String fullName = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'organization')
  String organization = null;
  

  @Property(name: 'parameters')
  List<StringParameterDefinition> parameters = [];
  

  @Property(name: 'permissions')
  BranchImplpermissions permissions = null;
  

  @Property(name: 'weatherScore')
  int weatherScore = null;
  

  @Property(name: 'pullRequest')
  String pullRequest = null;
  

  @Property(name: '_links')
  BranchImpllinks links = null;
  

  @Property(name: 'latestRun')
  PipelineRunImpl latestRun = null;
  
  BranchImpl();

  @override
  String toString()  {
    return 'BranchImpl[_class=$_class, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullDisplayName=$fullDisplayName, fullName=$fullName, name=$name, organization=$organization, parameters=$parameters, permissions=$permissions, weatherScore=$weatherScore, pullRequest=$pullRequest, links=$links, latestRun=$latestRun, ]';
  }

}

