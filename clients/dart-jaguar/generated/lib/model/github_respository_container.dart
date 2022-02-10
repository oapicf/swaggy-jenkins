import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/github_respository_containerlinks.dart';

import 'package:openapi/model/github_repositories.dart';

part 'github_respository_container.jser.dart';

class GithubRespositoryContainer {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final GithubRespositoryContainerlinks links;
  
  @Alias('repositories', isNullable: false,  )
  final GithubRepositories repositories;
  

  GithubRespositoryContainer(
      

{
     this.class_ = null,  
     this.links = null,  
     this.repositories = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubRespositoryContainer[class_=$class_, links=$links, repositories=$repositories, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubRespositoryContainerSerializer extends Serializer<GithubRespositoryContainer> with _$GithubRespositoryContainerSerializer {

}

