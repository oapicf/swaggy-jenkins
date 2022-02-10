import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'classes_by_class.jser.dart';

class ClassesByClass {
  
  @Alias('classes', isNullable: false,  )
  final List<String> classes;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  ClassesByClass(
      

{
     this.classes = const [],  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'ClassesByClass[classes=$classes, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class ClassesByClassSerializer extends Serializer<ClassesByClass> with _$ClassesByClassSerializer {

}

