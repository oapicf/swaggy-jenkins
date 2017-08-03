part of swagger.api;


@Entity()
class SwapSpaceMonitorMemoryUsage2 {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'availablePhysicalMemory')
  int availablePhysicalMemory = null;
  

  @Property(name: 'availableSwapSpace')
  int availableSwapSpace = null;
  

  @Property(name: 'totalPhysicalMemory')
  int totalPhysicalMemory = null;
  

  @Property(name: 'totalSwapSpace')
  int totalSwapSpace = null;
  
  SwapSpaceMonitorMemoryUsage2();

  @override
  String toString()  {
    return 'SwapSpaceMonitorMemoryUsage2[_class=$_class, availablePhysicalMemory=$availablePhysicalMemory, availableSwapSpace=$availableSwapSpace, totalPhysicalMemory=$totalPhysicalMemory, totalSwapSpace=$totalSwapSpace, ]';
  }

}

