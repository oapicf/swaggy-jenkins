part of swagger.api;


@Entity()
class HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'timestamp')
  int timestamp = null;
  

  @Property(name: 'path')
  String path = null;
  

  @Property(name: 'size')
  int size = null;
  
  HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace();

  @override
  String toString()  {
    return 'HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace[_class=$_class, timestamp=$timestamp, path=$path, size=$size, ]';
  }

}

