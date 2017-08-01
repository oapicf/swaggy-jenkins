part of swagger.api;


@Entity()
class SwaggyjenkinsPipeline {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'organization')
  String organization = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'fullName')
  String fullName = null;
  

  @Property(name: 'weatherScore')
  int weatherScore = null;
  

  @Property(name: 'estimatedDurationInMillis')
  int estimatedDurationInMillis = null;
  

  @Property(name: 'latestRun')
  SwaggyjenkinsPipelineLatestRun latestRun = null;
  
  SwaggyjenkinsPipeline();

  @override
  String toString()  {
    return 'SwaggyjenkinsPipeline[_class=$_class, organization=$organization, name=$name, displayName=$displayName, fullName=$fullName, weatherScore=$weatherScore, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, ]';
  }

}

