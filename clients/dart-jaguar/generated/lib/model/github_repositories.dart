import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/github_repositorieslinks.dart';

import 'package:openapi/model/github_repository.dart';

part 'github_repositories.jser.dart';

class GithubRepositories {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('_links', isNullable: false,  )
  final GithubRepositorieslinks links;
  
  @Alias('items', isNullable: false,  )
  final List<GithubRepository> items;
  
  @Alias('lastPage', isNullable: false,  )
  final int lastPage;
  
  @Alias('nextPage', isNullable: false,  )
  final int nextPage;
  
  @Alias('pageSize', isNullable: false,  )
  final int pageSize;
  

  GithubRepositories(
      

{
     this.class_ = null,  
     this.links = null,  
     this.items = const [],  
     this.lastPage = null,  
     this.nextPage = null,  
     this.pageSize = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubRepositories[class_=$class_, links=$links, items=$items, lastPage=$lastPage, nextPage=$nextPage, pageSize=$pageSize, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubRepositoriesSerializer extends Serializer<GithubRepositories> with _$GithubRepositoriesSerializer {

}

