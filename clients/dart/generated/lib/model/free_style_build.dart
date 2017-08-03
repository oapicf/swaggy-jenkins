part of swagger.api;


@Entity()
class FreeStyleBuild {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'number')
  int number = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: 'actions')
  List<CauseAction> actions = [];
  

  @Property(name: 'building')
  bool building = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'duration')
  int duration = null;
  

  @Property(name: 'estimatedDuration')
  int estimatedDuration = null;
  

  @Property(name: 'executor')
  String executor = null;
  

  @Property(name: 'fullDisplayName')
  String fullDisplayName = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'keepLog')
  bool keepLog = null;
  

  @Property(name: 'queueId')
  int queueId = null;
  

  @Property(name: 'result')
  String result = null;
  

  @Property(name: 'timestamp')
  int timestamp = null;
  

  @Property(name: 'builtOn')
  String builtOn = null;
  

  @Property(name: 'changeSet')
  EmptyChangeLogSet changeSet = null;
  
  FreeStyleBuild();

  @override
  String toString()  {
    return 'FreeStyleBuild[_class=$_class, number=$number, url=$url, actions=$actions, building=$building, description=$description, displayName=$displayName, duration=$duration, estimatedDuration=$estimatedDuration, executor=$executor, fullDisplayName=$fullDisplayName, id=$id, keepLog=$keepLog, queueId=$queueId, result=$result, timestamp=$timestamp, builtOn=$builtOn, changeSet=$changeSet, ]';
  }

}

