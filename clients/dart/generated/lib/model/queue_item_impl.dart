part of swagger.api;


@Entity()
class QueueItemImpl {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'expectedBuildNumber')
  int expectedBuildNumber = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'pipeline')
  String pipeline = null;
  

  @Property(name: 'queuedTime')
  int queuedTime = null;
  
  QueueItemImpl();

  @override
  String toString()  {
    return 'QueueItemImpl[_class=$_class, expectedBuildNumber=$expectedBuildNumber, id=$id, pipeline=$pipeline, queuedTime=$queuedTime, ]';
  }

}

