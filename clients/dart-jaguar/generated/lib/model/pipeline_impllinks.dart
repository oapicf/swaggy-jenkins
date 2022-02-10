import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'pipeline_impllinks.jser.dart';

class PipelineImpllinks {
  
  @Alias('runs', isNullable: false,  )
  final Link runs;
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('queue', isNullable: false,  )
  final Link queue;
  
  @Alias('actions', isNullable: false,  )
  final Link actions;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineImpllinks(
      

{
     this.runs = null,  
     this.self = null,  
     this.queue = null,  
     this.actions = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineImpllinks[runs=$runs, self=$self, queue=$queue, actions=$actions, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineImpllinksSerializer extends Serializer<PipelineImpllinks> with _$PipelineImpllinksSerializer {

}

