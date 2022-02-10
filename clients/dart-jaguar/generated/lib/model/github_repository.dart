import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/github_repositorylinks.dart';

import 'package:openapi/model/github_repositorypermissions.dart';

part 'github_repository.jser.dart';

class GithubRepository {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final GithubRepositorylinks links;
  
  @Alias('defaultBranch', isNullable: false,  )
  final String defaultBranch;
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('permissions', isNullable: false,  )
  final GithubRepositorypermissions permissions;
  
  @Alias('private', isNullable: false,  )
  final bool private;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  

  GithubRepository(
      

{
     this.class_ = null,  
     this.links = null,  
     this.defaultBranch = null,  
     this.description = null,  
     this.name = null,  
     this.permissions = null,  
     this.private = null,  
     this.fullName = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubRepository[class_=$class_, links=$links, defaultBranch=$defaultBranch, description=$description, name=$name, permissions=$permissions, private=$private, fullName=$fullName, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubRepositorySerializer extends Serializer<GithubRepository> with _$GithubRepositorySerializer {

}

