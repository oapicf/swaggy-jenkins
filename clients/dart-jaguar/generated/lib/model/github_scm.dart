import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/github_scmlinks.dart';

part 'github_scm.jser.dart';

class GithubScm {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final GithubScmlinks links;
  
  @Alias('credentialId', isNullable: false,  )
  final String credentialId;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('uri', isNullable: false,  )
  final String uri;
  

  GithubScm(
      

{
     this.class_ = null,  
     this.links = null,  
     this.credentialId = null,  
     this.id = null,  
     this.uri = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubScm[class_=$class_, links=$links, credentialId=$credentialId, id=$id, uri=$uri, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubScmSerializer extends Serializer<GithubScm> with _$GithubScmSerializer {

}

