part of swagger.api;


@Entity()
class ResponseTimeMonitorData {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'timestamp')
  int timestamp = null;
  

  @Property(name: 'average')
  int average = null;
  
  ResponseTimeMonitorData();

  @override
  String toString()  {
    return 'ResponseTimeMonitorData[_class=$_class, timestamp=$timestamp, average=$average, ]';
  }

}

