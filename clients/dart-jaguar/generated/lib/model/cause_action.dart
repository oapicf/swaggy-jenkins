import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/cause_user_id_cause.dart';

part 'cause_action.jser.dart';

class CauseAction {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('causes', isNullable: false,  )
  final List<CauseUserIdCause> causes;
  

  CauseAction(
      

{
     this.class_ = null,  
     this.causes = const [] 
    
    }
  );

  @override
  String toString() {
    return 'CauseAction[class_=$class_, causes=$causes, ]';
  }
}

@GenSerializer(nullableFields: true)
class CauseActionSerializer extends Serializer<CauseAction> with _$CauseActionSerializer {

}

