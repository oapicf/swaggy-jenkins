import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/favorite_impllinks.dart';

import 'package:openapi/model/pipeline_impl.dart';

part 'favorite_impl.jser.dart';

class FavoriteImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final FavoriteImpllinks links;
  
  @Alias('item', isNullable: false,  )
  final PipelineImpl item;
  

  FavoriteImpl(
      

{
     this.class_ = null,  
     this.links = null,  
     this.item = null 
    
    }
  );

  @override
  String toString() {
    return 'FavoriteImpl[class_=$class_, links=$links, item=$item, ]';
  }
}

@GenSerializer(nullableFields: true)
class FavoriteImplSerializer extends Serializer<FavoriteImpl> with _$FavoriteImplSerializer {

}

