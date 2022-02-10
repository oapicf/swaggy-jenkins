import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/extension_class_container_impl1links.dart';

import 'package:openapi/model/extension_class_container_impl1map.dart';

part 'extension_class_container_impl1.jser.dart';

class ExtensionClassContainerImpl1 {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final ExtensionClassContainerImpl1links links;
  
  @Alias('map', isNullable: false,  )
  final ExtensionClassContainerImpl1map map;
  

  ExtensionClassContainerImpl1(
      

{
     this.class_ = null,  
     this.links = null,  
     this.map = null 
    
    }
  );

  @override
  String toString() {
    return 'ExtensionClassContainerImpl1[class_=$class_, links=$links, map=$map, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExtensionClassContainerImpl1Serializer extends Serializer<ExtensionClassContainerImpl1> with _$ExtensionClassContainerImpl1Serializer {

}

