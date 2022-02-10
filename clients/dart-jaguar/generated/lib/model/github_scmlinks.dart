import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'github_scmlinks.jser.dart';

class GithubScmlinks {
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  GithubScmlinks(
      

{
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubScmlinks[self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubScmlinksSerializer extends Serializer<GithubScmlinks> with _$GithubScmlinksSerializer {

}

