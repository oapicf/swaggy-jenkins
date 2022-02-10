import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'swap_space_monitor_memory_usage2.jser.dart';

class SwapSpaceMonitorMemoryUsage2 {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('availablePhysicalMemory', isNullable: false,  )
  final int availablePhysicalMemory;
  
  @Alias('availableSwapSpace', isNullable: false,  )
  final int availableSwapSpace;
  
  @Alias('totalPhysicalMemory', isNullable: false,  )
  final int totalPhysicalMemory;
  
  @Alias('totalSwapSpace', isNullable: false,  )
  final int totalSwapSpace;
  

  SwapSpaceMonitorMemoryUsage2(
      

{
     this.class_ = null,  
     this.availablePhysicalMemory = null,  
     this.availableSwapSpace = null,  
     this.totalPhysicalMemory = null,  
     this.totalSwapSpace = null 
    
    }
  );

  @override
  String toString() {
    return 'SwapSpaceMonitorMemoryUsage2[class_=$class_, availablePhysicalMemory=$availablePhysicalMemory, availableSwapSpace=$availableSwapSpace, totalPhysicalMemory=$totalPhysicalMemory, totalSwapSpace=$totalSwapSpace, ]';
  }
}

@GenSerializer(nullableFields: true)
class SwapSpaceMonitorMemoryUsage2Serializer extends Serializer<SwapSpaceMonitorMemoryUsage2> with _$SwapSpaceMonitorMemoryUsage2Serializer {

}

