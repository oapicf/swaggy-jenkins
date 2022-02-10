import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/github_organizationlinks.dart';

part 'github_organization.jser.dart';

class GithubOrganization {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final GithubOrganizationlinks links;
  
  @Alias('jenkinsOrganizationPipeline', isNullable: false,  )
  final bool jenkinsOrganizationPipeline;
  
  @Alias('name', isNullable: false,  )
  final String name;
  

  GithubOrganization(
      

{
     this.class_ = null,  
     this.links = null,  
     this.jenkinsOrganizationPipeline = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubOrganization[class_=$class_, links=$links, jenkinsOrganizationPipeline=$jenkinsOrganizationPipeline, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubOrganizationSerializer extends Serializer<GithubOrganization> with _$GithubOrganizationSerializer {

}

