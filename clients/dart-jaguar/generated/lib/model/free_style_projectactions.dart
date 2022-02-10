import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'free_style_projectactions.jser.dart';

class FreeStyleProjectactions {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  FreeStyleProjectactions(
      

{
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'FreeStyleProjectactions[class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class FreeStyleProjectactionsSerializer extends Serializer<FreeStyleProjectactions> with _$FreeStyleProjectactionsSerializer {

}

