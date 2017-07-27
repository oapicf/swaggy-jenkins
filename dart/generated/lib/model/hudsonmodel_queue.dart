part of swagger.api;


@Entity()
class HudsonmodelQueue {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'items')
  List<HudsonmodelQueueBlockedItem> items = [];
  
  HudsonmodelQueue();

  @override
  String toString()  {
    return 'HudsonmodelQueue[_class=$_class, items=$items, ]';
  }

}

