import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'multibranch_pipeline.jser.dart';

class MultibranchPipeline {
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('estimatedDurationInMillis', isNullable: false,  )
  final int estimatedDurationInMillis;
  
  @Alias('latestRun', isNullable: false,  )
  final String latestRun;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('organization', isNullable: false,  )
  final String organization;
  
  @Alias('weatherScore', isNullable: false,  )
  final int weatherScore;
  
  @Alias('branchNames', isNullable: false,  )
  final List<String> branchNames;
  
  @Alias('numberOfFailingBranches', isNullable: false,  )
  final int numberOfFailingBranches;
  
  @Alias('numberOfFailingPullRequests', isNullable: false,  )
  final int numberOfFailingPullRequests;
  
  @Alias('numberOfSuccessfulBranches', isNullable: false,  )
  final int numberOfSuccessfulBranches;
  
  @Alias('numberOfSuccessfulPullRequests', isNullable: false,  )
  final int numberOfSuccessfulPullRequests;
  
  @Alias('totalNumberOfBranches', isNullable: false,  )
  final int totalNumberOfBranches;
  
  @Alias('totalNumberOfPullRequests', isNullable: false,  )
  final int totalNumberOfPullRequests;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  MultibranchPipeline(
      

{
     this.displayName = null,  
     this.estimatedDurationInMillis = null,  
     this.latestRun = null,  
     this.name = null,  
     this.organization = null,  
     this.weatherScore = null,  
     this.branchNames = const [],  
     this.numberOfFailingBranches = null,  
     this.numberOfFailingPullRequests = null,  
     this.numberOfSuccessfulBranches = null,  
     this.numberOfSuccessfulPullRequests = null,  
     this.totalNumberOfBranches = null,  
     this.totalNumberOfPullRequests = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'MultibranchPipeline[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, latestRun=$latestRun, name=$name, organization=$organization, weatherScore=$weatherScore, branchNames=$branchNames, numberOfFailingBranches=$numberOfFailingBranches, numberOfFailingPullRequests=$numberOfFailingPullRequests, numberOfSuccessfulBranches=$numberOfSuccessfulBranches, numberOfSuccessfulPullRequests=$numberOfSuccessfulPullRequests, totalNumberOfBranches=$totalNumberOfBranches, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class MultibranchPipelineSerializer extends Serializer<MultibranchPipeline> with _$MultibranchPipelineSerializer {

}

