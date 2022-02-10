import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'pipeline_step_impllinks.jser.dart';

class PipelineStepImpllinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('actions', isNullable: false,  )
  final Link actions;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineStepImpllinks(
      

{
     this.self = null,  
     this.actions = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineStepImpllinks[self=$self, actions=$actions, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineStepImpllinksSerializer extends Serializer<PipelineStepImpllinks> with _$PipelineStepImpllinksSerializer {

}

