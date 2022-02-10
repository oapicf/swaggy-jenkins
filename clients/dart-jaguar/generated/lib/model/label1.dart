import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'label1.jser.dart';

class Label1 {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  Label1(
      

{
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'Label1[class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class Label1Serializer extends Serializer<Label1> with _$Label1Serializer {

}

