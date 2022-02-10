import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'unlabeled_load_statistics.jser.dart';

class UnlabeledLoadStatistics {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  UnlabeledLoadStatistics(
      

{
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'UnlabeledLoadStatistics[class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class UnlabeledLoadStatisticsSerializer extends Serializer<UnlabeledLoadStatistics> with _$UnlabeledLoadStatisticsSerializer {

}

