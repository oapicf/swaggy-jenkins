import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'favorite_impllinks.jser.dart';

class FavoriteImpllinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  FavoriteImpllinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'FavoriteImpllinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class FavoriteImpllinksSerializer extends Serializer<FavoriteImpllinks> with _$FavoriteImpllinksSerializer {

}

