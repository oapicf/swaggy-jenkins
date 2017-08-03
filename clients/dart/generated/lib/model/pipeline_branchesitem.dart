part of swagger.api;


@Entity()
class PipelineBranchesitem {
  
  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'estimatedDurationInMillis')
  int estimatedDurationInMillis = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'weatherScore')
  int weatherScore = null;
  

  @Property(name: 'latestRun')
  PipelineBranchesitemlatestRun latestRun = null;
  

  @Property(name: 'organization')
  String organization = null;
  

  @Property(name: 'pullRequest')
  PipelineBranchesitempullRequest pullRequest = null;
  

  @Property(name: 'totalNumberOfPullRequests')
  int totalNumberOfPullRequests = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineBranchesitem();

  @override
  String toString()  {
    return 'PipelineBranchesitem[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, name=$name, weatherScore=$weatherScore, latestRun=$latestRun, organization=$organization, pullRequest=$pullRequest, totalNumberOfPullRequests=$totalNumberOfPullRequests, _class=$_class, ]';
  }

}

