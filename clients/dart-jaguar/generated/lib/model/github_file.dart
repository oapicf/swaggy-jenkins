import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/github_content.dart';

part 'github_file.jser.dart';

class GithubFile {
  
  @Alias('content', isNullable: false,  )
  final GithubContent content;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  GithubFile(
      

{
     this.content = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubFile[content=$content, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubFileSerializer extends Serializer<GithubFile> with _$GithubFileSerializer {

}

