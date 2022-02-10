import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'empty_change_log_set.jser.dart';

class EmptyChangeLogSet {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('kind', isNullable: false,  )
  final String kind;
  

  EmptyChangeLogSet(
      

{
     this.class_ = null,  
     this.kind = null 
    
    }
  );

  @override
  String toString() {
    return 'EmptyChangeLogSet[class_=$class_, kind=$kind, ]';
  }
}

@GenSerializer(nullableFields: true)
class EmptyChangeLogSetSerializer extends Serializer<EmptyChangeLogSet> with _$EmptyChangeLogSetSerializer {

}

