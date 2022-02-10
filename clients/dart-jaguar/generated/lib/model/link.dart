import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'link.jser.dart';

class Link {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('href', isNullable: false,  )
  final String href;
  

  Link(
      

{
     this.class_ = null,  
     this.href = null 
    
    }
  );

  @override
  String toString() {
    return 'Link[class_=$class_, href=$href, ]';
  }
}

@GenSerializer(nullableFields: true)
class LinkSerializer extends Serializer<Link> with _$LinkSerializer {

}

