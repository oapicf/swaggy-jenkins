import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'extension_class_impllinks.jser.dart';

class ExtensionClassImpllinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  ExtensionClassImpllinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'ExtensionClassImpllinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExtensionClassImpllinksSerializer extends Serializer<ExtensionClassImpllinks> with _$ExtensionClassImpllinksSerializer {

}

