import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/queue_blocked_item.dart';

part 'queue.jser.dart';

class Queue {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('items', isNullable: false,  )
  final List<QueueBlockedItem> items;
  

  Queue(
      

{
     this.class_ = null,  
     this.items = const [] 
    
    }
  );

  @override
  String toString() {
    return 'Queue[class_=$class_, items=$items, ]';
  }
}

@GenSerializer(nullableFields: true)
class QueueSerializer extends Serializer<Queue> with _$QueueSerializer {

}

