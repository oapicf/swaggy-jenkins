import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'pipeline_run_nodeedges.jser.dart';

class PipelineRunNodeedges {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineRunNodeedges(
      

{
     this.id = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineRunNodeedges[id=$id, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineRunNodeedgesSerializer extends Serializer<PipelineRunNodeedges> with _$PipelineRunNodeedgesSerializer {

}

