import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'disk_space_monitor_descriptor_disk_space.jser.dart';

class DiskSpaceMonitorDescriptorDiskSpace {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('timestamp', isNullable: false,  )
  final int timestamp;
  
  @Alias('path', isNullable: false,  )
  final String path;
  
  @Alias('size', isNullable: false,  )
  final int size;
  

  DiskSpaceMonitorDescriptorDiskSpace(
      

{
     this.class_ = null,  
     this.timestamp = null,  
     this.path = null,  
     this.size = null 
    
    }
  );

  @override
  String toString() {
    return 'DiskSpaceMonitorDescriptorDiskSpace[class_=$class_, timestamp=$timestamp, path=$path, size=$size, ]';
  }
}

@GenSerializer(nullableFields: true)
class DiskSpaceMonitorDescriptorDiskSpaceSerializer extends Serializer<DiskSpaceMonitorDescriptorDiskSpace> with _$DiskSpaceMonitorDescriptorDiskSpaceSerializer {

}

