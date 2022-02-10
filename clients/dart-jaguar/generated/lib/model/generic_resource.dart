import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'generic_resource.jser.dart';

class GenericResource {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('durationInMillis', isNullable: false,  )
  final int durationInMillis;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('result', isNullable: false,  )
  final String result;
  
  @Alias('startTime', isNullable: false,  )
  final String startTime;
  

  GenericResource(
      

{
     this.class_ = null,  
     this.displayName = null,  
     this.durationInMillis = null,  
     this.id = null,  
     this.result = null,  
     this.startTime = null 
    
    }
  );

  @override
  String toString() {
    return 'GenericResource[class_=$class_, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, result=$result, startTime=$startTime, ]';
  }
}

@GenSerializer(nullableFields: true)
class GenericResourceSerializer extends Serializer<GenericResource> with _$GenericResourceSerializer {

}

