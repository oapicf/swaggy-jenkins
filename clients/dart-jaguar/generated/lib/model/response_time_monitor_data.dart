import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_time_monitor_data.jser.dart';

class ResponseTimeMonitorData {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('timestamp', isNullable: false,  )
  final int timestamp;
  
  @Alias('average', isNullable: false,  )
  final int average;
  

  ResponseTimeMonitorData(
      

{
     this.class_ = null,  
     this.timestamp = null,  
     this.average = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMonitorData[class_=$class_, timestamp=$timestamp, average=$average, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeMonitorDataSerializer extends Serializer<ResponseTimeMonitorData> with _$ResponseTimeMonitorDataSerializer {

}

