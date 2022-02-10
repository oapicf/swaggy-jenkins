import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'github_content.jser.dart';

class GithubContent {
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('sha', isNullable: false,  )
  final String sha;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('repo', isNullable: false,  )
  final String repo;
  
  @Alias('size', isNullable: false,  )
  final int size;
  
  @Alias('owner', isNullable: false,  )
  final String owner;
  
  @Alias('path', isNullable: false,  )
  final String path;
  
  @Alias('base64Data', isNullable: false,  )
  final String base64Data;
  

  GithubContent(
      

{
     this.name = null,  
     this.sha = null,  
     this.class_ = null,  
     this.repo = null,  
     this.size = null,  
     this.owner = null,  
     this.path = null,  
     this.base64Data = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubContent[name=$name, sha=$sha, class_=$class_, repo=$repo, size=$size, owner=$owner, path=$path, base64Data=$base64Data, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubContentSerializer extends Serializer<GithubContent> with _$GithubContentSerializer {

}

