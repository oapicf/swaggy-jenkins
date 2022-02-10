import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'hudsonassigned_labels.jser.dart';

class HudsonassignedLabels {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  HudsonassignedLabels(
      

{
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'HudsonassignedLabels[class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class HudsonassignedLabelsSerializer extends Serializer<HudsonassignedLabels> with _$HudsonassignedLabelsSerializer {

}

