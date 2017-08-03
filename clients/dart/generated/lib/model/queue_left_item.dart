part of swagger.api;


@Entity()
class QueueLeftItem {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'actions')
  List<CauseAction> actions = [];
  

  @Property(name: 'blocked')
  bool blocked = null;
  

  @Property(name: 'buildable')
  bool buildable = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'inQueueSince')
  int inQueueSince = null;
  

  @Property(name: 'params')
  String params = null;
  

  @Property(name: 'stuck')
  bool stuck = null;
  

  @Property(name: 'task')
  FreeStyleProject task = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: 'why')
  String why = null;
  

  @Property(name: 'cancelled')
  bool cancelled = null;
  

  @Property(name: 'executable')
  FreeStyleBuild executable = null;
  
  QueueLeftItem();

  @override
  String toString()  {
    return 'QueueLeftItem[_class=$_class, actions=$actions, blocked=$blocked, buildable=$buildable, id=$id, inQueueSince=$inQueueSince, params=$params, stuck=$stuck, task=$task, url=$url, why=$why, cancelled=$cancelled, executable=$executable, ]';
  }

}

