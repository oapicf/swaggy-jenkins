import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/cause_action.dart';

import 'package:openapi/model/free_style_project.dart';

part 'queue_blocked_item.jser.dart';

class QueueBlockedItem {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('actions', isNullable: false,  )
  final List<CauseAction> actions;
  
  @Alias('blocked', isNullable: false,  )
  final bool blocked;
  
  @Alias('buildable', isNullable: false,  )
  final bool buildable;
  
  @Alias('id', isNullable: false,  )
  final int id;
  
  @Alias('inQueueSince', isNullable: false,  )
  final int inQueueSince;
  
  @Alias('params', isNullable: false,  )
  final String params;
  
  @Alias('stuck', isNullable: false,  )
  final bool stuck;
  
  @Alias('task', isNullable: false,  )
  final FreeStyleProject task;
  
  @Alias('url', isNullable: false,  )
  final String url;
  
  @Alias('why', isNullable: false,  )
  final String why;
  
  @Alias('buildableStartMilliseconds', isNullable: false,  )
  final int buildableStartMilliseconds;
  

  QueueBlockedItem(
      

{
     this.class_ = null,  
     this.actions = const [],  
     this.blocked = null,  
     this.buildable = null,  
     this.id = null,  
     this.inQueueSince = null,  
     this.params = null,  
     this.stuck = null,  
     this.task = null,  
     this.url = null,  
     this.why = null,  
     this.buildableStartMilliseconds = null 
    
    }
  );

  @override
  String toString() {
    return 'QueueBlockedItem[class_=$class_, actions=$actions, blocked=$blocked, buildable=$buildable, id=$id, inQueueSince=$inQueueSince, params=$params, stuck=$stuck, task=$task, url=$url, why=$why, buildableStartMilliseconds=$buildableStartMilliseconds, ]';
  }
}

@GenSerializer(nullableFields: true)
class QueueBlockedItemSerializer extends Serializer<QueueBlockedItem> with _$QueueBlockedItemSerializer {

}

