part of swagger.api;


@Entity()
class GetPipelineBranchesitem {
  
  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'estimatedDurationInMillis')
  int estimatedDurationInMillis = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'weatherScore')
  int weatherScore = null;
  

  @Property(name: 'latestRun')
  GetPipelineBranchesitemLatestRun latestRun = null;
  

  @Property(name: 'organization')
  String organization = null;
  

  @Property(name: 'pullRequest')
  GetPipelineBranchesitemPullRequest pullRequest = null;
  

  @Property(name: 'totalNumberOfPullRequests')
  int totalNumberOfPullRequests = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GetPipelineBranchesitem();

  @override
  String toString()  {
    return 'GetPipelineBranchesitem[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, name=$name, weatherScore=$weatherScore, latestRun=$latestRun, organization=$organization, pullRequest=$pullRequest, totalNumberOfPullRequests=$totalNumberOfPullRequests, _class=$_class, ]';
  }

}

