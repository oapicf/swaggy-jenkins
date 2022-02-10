import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'null_scm.jser.dart';

class NullSCM {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  NullSCM(
      

{
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'NullSCM[class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class NullSCMSerializer extends Serializer<NullSCM> with _$NullSCMSerializer {

}

