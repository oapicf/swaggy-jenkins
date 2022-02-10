import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'string_parameter_value.jser.dart';

class StringParameterValue {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('value', isNullable: false,  )
  final String value;
  

  StringParameterValue(
      

{
     this.class_ = null,  
     this.name = null,  
     this.value = null 
    
    }
  );

  @override
  String toString() {
    return 'StringParameterValue[class_=$class_, name=$name, value=$value, ]';
  }
}

@GenSerializer(nullableFields: true)
class StringParameterValueSerializer extends Serializer<StringParameterValue> with _$StringParameterValueSerializer {

}

