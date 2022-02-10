import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/input_step_impl.dart';

import 'package:openapi/model/pipeline_step_impllinks.dart';

part 'pipeline_step_impl.jser.dart';

class PipelineStepImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final PipelineStepImpllinks links;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('durationInMillis', isNullable: false,  )
  final int durationInMillis;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('input', isNullable: false,  )
  final InputStepImpl input;
  
  @Alias('result', isNullable: false,  )
  final String result;
  
  @Alias('startTime', isNullable: false,  )
  final String startTime;
  
  @Alias('state', isNullable: false,  )
  final String state;
  

  PipelineStepImpl(
      

{
     this.class_ = null,  
     this.links = null,  
     this.displayName = null,  
     this.durationInMillis = null,  
     this.id = null,  
     this.input = null,  
     this.result = null,  
     this.startTime = null,  
     this.state = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineStepImpl[class_=$class_, links=$links, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, input=$input, result=$result, startTime=$startTime, state=$state, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineStepImplSerializer extends Serializer<PipelineStepImpl> with _$PipelineStepImplSerializer {

}

