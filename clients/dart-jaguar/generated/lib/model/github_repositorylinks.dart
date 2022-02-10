import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'github_repositorylinks.jser.dart';

class GithubRepositorylinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  GithubRepositorylinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubRepositorylinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubRepositorylinksSerializer extends Serializer<GithubRepositorylinks> with _$GithubRepositorylinksSerializer {

}

