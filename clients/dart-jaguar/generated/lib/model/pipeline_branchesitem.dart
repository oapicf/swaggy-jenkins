import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/pipeline_branchesitempull_request.dart';

import 'package:openapi/model/pipeline_branchesitemlatest_run.dart';

part 'pipeline_branchesitem.jser.dart';

class PipelineBranchesitem {
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('estimatedDurationInMillis', isNullable: false,  )
  final int estimatedDurationInMillis;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('weatherScore', isNullable: false,  )
  final int weatherScore;
  
  @Alias('latestRun', isNullable: false,  )
  final PipelineBranchesitemlatestRun latestRun;
  
  @Alias('organization', isNullable: false,  )
  final String organization;
  
  @Alias('pullRequest', isNullable: false,  )
  final PipelineBranchesitempullRequest pullRequest;
  
  @Alias('totalNumberOfPullRequests', isNullable: false,  )
  final int totalNumberOfPullRequests;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineBranchesitem(
      

{
     this.displayName = null,  
     this.estimatedDurationInMillis = null,  
     this.name = null,  
     this.weatherScore = null,  
     this.latestRun = null,  
     this.organization = null,  
     this.pullRequest = null,  
     this.totalNumberOfPullRequests = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineBranchesitem[displayName=$displayName, estimatedDurationInMillis=$estimatedDurationInMillis, name=$name, weatherScore=$weatherScore, latestRun=$latestRun, organization=$organization, pullRequest=$pullRequest, totalNumberOfPullRequests=$totalNumberOfPullRequests, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineBranchesitemSerializer extends Serializer<PipelineBranchesitem> with _$PipelineBranchesitemSerializer {

}

