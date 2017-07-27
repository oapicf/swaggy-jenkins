part of swagger.api;


@Entity()
class HudsonnodeMonitorsResponseTimeMonitorData {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'timestamp')
  int timestamp = null;
  

  @Property(name: 'average')
  int average = null;
  
  HudsonnodeMonitorsResponseTimeMonitorData();

  @override
  String toString()  {
    return 'HudsonnodeMonitorsResponseTimeMonitorData[_class=$_class, timestamp=$timestamp, average=$average, ]';
  }

}

