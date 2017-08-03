part of swagger.api;


@Entity()
class Queue {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'items')
  List<QueueBlockedItem> items = [];
  
  Queue();

  @override
  String toString()  {
    return 'Queue[_class=$_class, items=$items, ]';
  }

}

