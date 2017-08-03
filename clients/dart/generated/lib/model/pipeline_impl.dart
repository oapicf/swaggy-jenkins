part of swagger.api;


@Entity()
class PipelineImpl {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'estimatedDurationInMillis')
  int estimatedDurationInMillis = null;
  

  @Property(name: 'fullName')
  String fullName = null;
  

  @Property(name: 'latestRun')
  String latestRun = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'organization')
  String organization = null;
  

  @Property(name: 'weatherScore')
  int weatherScore = null;
  

  @Property(name: '_links')
  PipelineImpllinks links = null;
  
  PipelineImpl();

  @override
  String toString()  {
    return 'PipelineImpl[_class=$_class, displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, fullName=$fullName, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, links=$links, ]';
  }

}

