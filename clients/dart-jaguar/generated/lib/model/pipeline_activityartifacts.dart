import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'pipeline_activityartifacts.jser.dart';

class PipelineActivityartifacts {
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('size', isNullable: false,  )
  final int size;
  
  @Alias('url', isNullable: false,  )
  final String url;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineActivityartifacts(
      

{
     this.name = null,  
     this.size = null,  
     this.url = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineActivityartifacts[name=$name, size=$size, url=$url, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineActivityartifactsSerializer extends Serializer<PipelineActivityartifacts> with _$PipelineActivityartifactsSerializer {

}

