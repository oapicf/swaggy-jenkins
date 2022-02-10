import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'pipeline_run_impllinks.jser.dart';

class PipelineRunImpllinks {
  
  @Alias('nodes', isNullable: false,  )
  final Link nodes;
  
  @Alias('log', isNullable: false,  )
  final Link log;
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('actions', isNullable: false,  )
  final Link actions;
  
  @Alias('steps', isNullable: false,  )
  final Link steps;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineRunImpllinks(
      

{
     this.nodes = null,  
     this.log = null,  
     this.self = null,  
     this.actions = null,  
     this.steps = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineRunImpllinks[nodes=$nodes, log=$log, self=$self, actions=$actions, steps=$steps, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineRunImpllinksSerializer extends Serializer<PipelineRunImpllinks> with _$PipelineRunImpllinksSerializer {

}

