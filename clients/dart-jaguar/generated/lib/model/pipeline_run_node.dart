import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/pipeline_run_nodeedges.dart';

part 'pipeline_run_node.jser.dart';

class PipelineRunNode {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('durationInMillis', isNullable: false,  )
  final int durationInMillis;
  
  @Alias('edges', isNullable: false,  )
  final List<PipelineRunNodeedges> edges;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('result', isNullable: false,  )
  final String result;
  
  @Alias('startTime', isNullable: false,  )
  final String startTime;
  
  @Alias('state', isNullable: false,  )
  final String state;
  

  PipelineRunNode(
      

{
     this.class_ = null,  
     this.displayName = null,  
     this.durationInMillis = null,  
     this.edges = const [],  
     this.id = null,  
     this.result = null,  
     this.startTime = null,  
     this.state = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineRunNode[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, edges=$edges, id=$id, result=$result, startTime=$startTime, state=$state, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineRunNodeSerializer extends Serializer<PipelineRunNode> with _$PipelineRunNodeSerializer {

}

