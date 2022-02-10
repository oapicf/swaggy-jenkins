import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'cause_user_id_cause.jser.dart';

class CauseUserIdCause {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('shortDescription', isNullable: false,  )
  final String shortDescription;
  
  @Alias('userId', isNullable: false,  )
  final String userId;
  
  @Alias('userName', isNullable: false,  )
  final String userName;
  

  CauseUserIdCause(
      

{
     this.class_ = null,  
     this.shortDescription = null,  
     this.userId = null,  
     this.userName = null 
    
    }
  );

  @override
  String toString() {
    return 'CauseUserIdCause[class_=$class_, shortDescription=$shortDescription, userId=$userId, userName=$userName, ]';
  }
}

@GenSerializer(nullableFields: true)
class CauseUserIdCauseSerializer extends Serializer<CauseUserIdCause> with _$CauseUserIdCauseSerializer {

}

