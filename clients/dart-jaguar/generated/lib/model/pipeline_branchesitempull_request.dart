import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/pipeline_branchesitempull_requestlinks.dart';

part 'pipeline_branchesitempull_request.jser.dart';

class PipelineBranchesitempullRequest {
  
  @Alias('_links', isNullable: false,  )
  final PipelineBranchesitempullRequestlinks links;
  
  @Alias('author', isNullable: false,  )
  final String author;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('title', isNullable: false,  )
  final String title;
  
  @Alias('url', isNullable: false,  )
  final String url;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineBranchesitempullRequest(
      

{
     this.links = null,  
     this.author = null,  
     this.id = null,  
     this.title = null,  
     this.url = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineBranchesitempullRequest[links=$links, author=$author, id=$id, title=$title, url=$url, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineBranchesitempullRequestSerializer extends Serializer<PipelineBranchesitempullRequest> with _$PipelineBranchesitempullRequestSerializer {

}

