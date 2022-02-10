import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'all_view.jser.dart';

class AllView {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('url', isNullable: false,  )
  final String url;
  

  AllView(
      

{
     this.class_ = null,  
     this.name = null,  
     this.url = null 
    
    }
  );

  @override
  String toString() {
    return 'AllView[class_=$class_, name=$name, url=$url, ]';
  }
}

@GenSerializer(nullableFields: true)
class AllViewSerializer extends Serializer<AllView> with _$AllViewSerializer {

}

