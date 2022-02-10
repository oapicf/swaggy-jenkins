import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'extension_class_container_impl1links.jser.dart';

class ExtensionClassContainerImpl1links {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  ExtensionClassContainerImpl1links(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'ExtensionClassContainerImpl1links[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExtensionClassContainerImpl1linksSerializer extends Serializer<ExtensionClassContainerImpl1links> with _$ExtensionClassContainerImpl1linksSerializer {

}

