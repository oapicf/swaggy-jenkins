part of swagger.api;


@Entity()
class IojenkinsblueoceanrestimplpipelineBranchImpl {
  
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
  List<HudsonmodelStringParameterDefinition> parameters = [];
  

  @Property(name: 'permissions')
  IojenkinsblueoceanrestimplpipelineBranchImplPermissions permissions = null;
  

  @Property(name: 'weatherScore')
  int weatherScore = null;
  

  @Property(name: 'pullRequest')
  String pullRequest = null;
  
  IojenkinsblueoceanrestimplpipelineBranchImpl();

  @override
  String toString()  {
    return 'IojenkinsblueoceanrestimplpipelineBranchImpl[_class=$_class, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullDisplayName=$fullDisplayName, fullName=$fullName, name=$name, organization=$organization, parameters=$parameters, permissions=$permissions, weatherScore=$weatherScore, pullRequest=$pullRequest, ]';
  }

}

