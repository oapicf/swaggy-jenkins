import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'queue_item_impl.jser.dart';

class QueueItemImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('expectedBuildNumber', isNullable: false,  )
  final int expectedBuildNumber;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('pipeline', isNullable: false,  )
  final String pipeline;
  
  @Alias('queuedTime', isNullable: false,  )
  final int queuedTime;
  

  QueueItemImpl(
      

{
     this.class_ = null,  
     this.expectedBuildNumber = null,  
     this.id = null,  
     this.pipeline = null,  
     this.queuedTime = null 
    
    }
  );

  @override
  String toString() {
    return 'QueueItemImpl[class_=$class_, expectedBuildNumber=$expectedBuildNumber, id=$id, pipeline=$pipeline, queuedTime=$queuedTime, ]';
  }
}

@GenSerializer(nullableFields: true)
class QueueItemImplSerializer extends Serializer<QueueItemImpl> with _$QueueItemImplSerializer {

}

