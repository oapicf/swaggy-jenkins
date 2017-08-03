part of swagger.api;


@Entity()
class DiskSpaceMonitorDescriptorDiskSpace {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'timestamp')
  int timestamp = null;
  

  @Property(name: 'path')
  String path = null;
  

  @Property(name: 'size')
  int size = null;
  
  DiskSpaceMonitorDescriptorDiskSpace();

  @override
  String toString()  {
    return 'DiskSpaceMonitorDescriptorDiskSpace[_class=$_class, timestamp=$timestamp, path=$path, size=$size, ]';
  }

}

