import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'github_respository_containerlinks.jser.dart';

class GithubRespositoryContainerlinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  GithubRespositoryContainerlinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubRespositoryContainerlinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubRespositoryContainerlinksSerializer extends Serializer<GithubRespositoryContainerlinks> with _$GithubRespositoryContainerlinksSerializer {

}

