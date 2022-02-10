import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/string_parameter_value.dart';

part 'string_parameter_definition.jser.dart';

class StringParameterDefinition {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('defaultParameterValue', isNullable: false,  )
  final StringParameterValue defaultParameterValue;
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('type', isNullable: false,  )
  final String type;
  

  StringParameterDefinition(
      

{
     this.class_ = null,  
     this.defaultParameterValue = null,  
     this.description = null,  
     this.name = null,  
     this.type = null 
    
    }
  );

  @override
  String toString() {
    return 'StringParameterDefinition[class_=$class_, defaultParameterValue=$defaultParameterValue, description=$description, name=$name, type=$type, ]';
  }
}

@GenSerializer(nullableFields: true)
class StringParameterDefinitionSerializer extends Serializer<StringParameterDefinition> with _$StringParameterDefinitionSerializer {

}

