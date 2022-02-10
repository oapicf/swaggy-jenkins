import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/link.dart';

part 'github_organizationlinks.jser.dart';

class GithubOrganizationlinks {
  
  @Alias('repositories', isNullable: false,  )
  final Link repositories;
  
  @Alias('self', isNullable: false,  )
  final Link self;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  GithubOrganizationlinks(
      

{
     this.repositories = null,  
     this.self = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubOrganizationlinks[repositories=$repositories, self=$self, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubOrganizationlinksSerializer extends Serializer<GithubOrganizationlinks> with _$GithubOrganizationlinksSerializer {

}

