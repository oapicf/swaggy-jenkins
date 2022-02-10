import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/pipelinelatest_runartifacts.dart';

part 'pipelinelatest_run.jser.dart';

class PipelinelatestRun {
  
  @Alias('artifacts', isNullable: false,  )
  final List<PipelinelatestRunartifacts> artifacts;
  
  @Alias('durationInMillis', isNullable: false,  )
  final int durationInMillis;
  
  @Alias('estimatedDurationInMillis', isNullable: false,  )
  final int estimatedDurationInMillis;
  
  @Alias('enQueueTime', isNullable: false,  )
  final String enQueueTime;
  
  @Alias('endTime', isNullable: false,  )
  final String endTime;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('organization', isNullable: false,  )
  final String organization;
  
  @Alias('pipeline', isNullable: false,  )
  final String pipeline;
  
  @Alias('result', isNullable: false,  )
  final String result;
  
  @Alias('runSummary', isNullable: false,  )
  final String runSummary;
  
  @Alias('startTime', isNullable: false,  )
  final String startTime;
  
  @Alias('state', isNullable: false,  )
  final String state;
  
  @Alias('type', isNullable: false,  )
  final String type;
  
  @Alias('commitId', isNullable: false,  )
  final String commitId;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelinelatestRun(
      

{
     this.artifacts = const [],  
     this.durationInMillis = null,  
     this.estimatedDurationInMillis = null,  
     this.enQueueTime = null,  
     this.endTime = null,  
     this.id = null,  
     this.organization = null,  
     this.pipeline = null,  
     this.result = null,  
     this.runSummary = null,  
     this.startTime = null,  
     this.state = null,  
     this.type = null,  
     this.commitId = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelinelatestRun[artifacts=$artifacts, durationInMillis=$durationInMillis, estimatedDurationInMillis=$estimatedDurationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelinelatestRunSerializer extends Serializer<PipelinelatestRun> with _$PipelinelatestRunSerializer {

}

