import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/input_step_impllinks.dart';

import 'package:openapi/model/string_parameter_definition.dart';

part 'input_step_impl.jser.dart';

class InputStepImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final InputStepImpllinks links;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('message', isNullable: false,  )
  final String message;
  
  @Alias('ok', isNullable: false,  )
  final String ok;
  
  @Alias('parameters', isNullable: false,  )
  final List<StringParameterDefinition> parameters;
  
  @Alias('submitter', isNullable: false,  )
  final String submitter;
  

  InputStepImpl(
      

{
     this.class_ = null,  
     this.links = null,  
     this.id = null,  
     this.message = null,  
     this.ok = null,  
     this.parameters = const [],  
     this.submitter = null 
    
    }
  );

  @override
  String toString() {
    return 'InputStepImpl[class_=$class_, links=$links, id=$id, message=$message, ok=$ok, parameters=$parameters, submitter=$submitter, ]';
  }
}

@GenSerializer(nullableFields: true)
class InputStepImplSerializer extends Serializer<InputStepImpl> with _$InputStepImplSerializer {

}

