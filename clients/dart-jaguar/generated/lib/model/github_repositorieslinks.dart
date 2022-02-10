import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'github_repositorieslinks.jser.dart';

class GithubRepositorieslinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  GithubRepositorieslinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubRepositorieslinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubRepositorieslinksSerializer extends Serializer<GithubRepositorieslinks> with _$GithubRepositorieslinksSerializer {

}

