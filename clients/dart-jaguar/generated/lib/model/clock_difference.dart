import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'clock_difference.jser.dart';

class ClockDifference {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('diff', isNullable: false,  )
  final int diff;
  

  ClockDifference(
      

{
     this.class_ = null,  
     this.diff = null 
    
    }
  );

  @override
  String toString() {
    return 'ClockDifference[class_=$class_, diff=$diff, ]';
  }
}

@GenSerializer(nullableFields: true)
class ClockDifferenceSerializer extends Serializer<ClockDifference> with _$ClockDifferenceSerializer {

}

