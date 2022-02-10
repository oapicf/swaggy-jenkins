import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'input_step_impllinks.jser.dart';

class InputStepImpllinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  InputStepImpllinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'InputStepImpllinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class InputStepImpllinksSerializer extends Serializer<InputStepImpllinks> with _$InputStepImpllinksSerializer {

}

