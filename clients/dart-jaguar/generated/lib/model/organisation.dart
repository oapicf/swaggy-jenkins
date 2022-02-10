import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'organisation.jser.dart';

class Organisation {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('name', isNullable: false,  )
  final String name;
  

  Organisation(
      

{
     this.class_ = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'Organisation[class_=$class_, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class OrganisationSerializer extends Serializer<Organisation> with _$OrganisationSerializer {

}

