import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/pipeline_run_impllinks.dart';

part 'pipeline_run_impl.jser.dart';

class PipelineRunImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final PipelineRunImpllinks links;
  
  @Alias('durationInMillis', isNullable: false,  )
  final int durationInMillis;
  
  @Alias('enQueueTime', isNullable: false,  )
  final String enQueueTime;
  
  @Alias('endTime', isNullable: false,  )
  final String endTime;
  
  @Alias('estimatedDurationInMillis', isNullable: false,  )
  final int estimatedDurationInMillis;
  
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
  

  PipelineRunImpl(
      

{
     this.class_ = null,  
     this.links = null,  
     this.durationInMillis = null,  
     this.enQueueTime = null,  
     this.endTime = null,  
     this.estimatedDurationInMillis = null,  
     this.id = null,  
     this.organization = null,  
     this.pipeline = null,  
     this.result = null,  
     this.runSummary = null,  
     this.startTime = null,  
     this.state = null,  
     this.type = null,  
     this.commitId = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineRunImpl[class_=$class_, links=$links, durationInMillis=$durationInMillis, enQueueTime=$enQueueTime, endTime=$endTime, estimatedDurationInMillis=$estimatedDurationInMillis, id=$id, organization=$organization, pipeline=$pipeline, result=$result, runSummary=$runSummary, startTime=$startTime, state=$state, type=$type, commitId=$commitId, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineRunImplSerializer extends Serializer<PipelineRunImpl> with _$PipelineRunImplSerializer {

}

