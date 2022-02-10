import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/extension_class_impllinks.dart';

part 'extension_class_impl.jser.dart';

class ExtensionClassImpl {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final ExtensionClassImpllinks links;
  
  @Alias('classes', isNullable: false,  )
  final List<String> classes;
  

  ExtensionClassImpl(
      

{
     this.class_ = null,  
     this.links = null,  
     this.classes = const [] 
    
    }
  );

  @override
  String toString() {
    return 'ExtensionClassImpl[class_=$class_, links=$links, classes=$classes, ]';
  }
}

@GenSerializer(nullableFields: true)
class ExtensionClassImplSerializer extends Serializer<ExtensionClassImpl> with _$ExtensionClassImplSerializer {

}

