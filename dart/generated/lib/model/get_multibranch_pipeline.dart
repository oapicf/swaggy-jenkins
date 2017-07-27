part of swagger.api;


@Entity()
class GetMultibranchPipeline {
  
  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'estimatedDurationInMillis')
  int estimatedDurationInMillis = null;
  

  @Property(name: 'latestRun')
  String latestRun = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'organization')
  String organization = null;
  

  @Property(name: 'weatherScore')
  int weatherScore = null;
  

  @Property(name: 'branchNames')
  List<String> branchNames = [];
  

  @Property(name: 'numberOfFailingBranches')
  int numberOfFailingBranches = null;
  

  @Property(name: 'numberOfFailingPullRequests')
  int numberOfFailingPullRequests = null;
  

  @Property(name: 'numberOfSuccessfulBranches')
  int numberOfSuccessfulBranches = null;
  

  @Property(name: 'numberOfSuccessfulPullRequests')
  int numberOfSuccessfulPullRequests = null;
  

  @Property(name: 'totalNumberOfBranches')
  int totalNumberOfBranches = null;
  

  @Property(name: 'totalNumberOfPullRequests')
  int totalNumberOfPullRequests = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GetMultibranchPipeline();

  @override
  String toString()  {
    return 'GetMultibranchPipeline[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, branchNames=$branchNames, numberOfFailingBranches=$numberOfFailingBranches, numberOfFailingPullRequests=$numberOfFailingPullRequests, numberOfSuccessfulBranches=$numberOfSuccessfulBranches, numberOfSuccessfulPullRequests=$numberOfSuccessfulPullRequests, totalNumberOfBranches=$totalNumberOfBranches, totalNumberOfPullRequests=$totalNumberOfPullRequests, _class=$_class, ]';
  }

}

