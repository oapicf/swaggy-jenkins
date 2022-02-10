import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'pipeline_branchesitempull_requestlinks.jser.dart';

class PipelineBranchesitempullRequestlinks {
  
  @Alias('self', isNullable: false,  )
  final String self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  PipelineBranchesitempullRequestlinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'PipelineBranchesitempullRequestlinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class PipelineBranchesitempullRequestlinksSerializer extends Serializer<PipelineBranchesitempullRequestlinks> with _$PipelineBranchesitempullRequestlinksSerializer {

}

