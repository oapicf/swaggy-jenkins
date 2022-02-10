import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/free_style_project.dart';

part 'list_view.jser.dart';

class ListView {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('jobs', isNullable: false,  )
  final List<FreeStyleProject> jobs;
  
  @Alias('name', isNullable: false,  )
  final String name;
  
  @Alias('url', isNullable: false,  )
  final String url;
  

  ListView(
      

{
     this.class_ = null,  
     this.description = null,  
     this.jobs = const [],  
     this.name = null,  
     this.url = null 
    
    }
  );

  @override
  String toString() {
    return 'ListView[class_=$class_, description=$description, jobs=$jobs, name=$name, url=$url, ]';
  }
}

@GenSerializer(nullableFields: true)
class ListViewSerializer extends Serializer<ListView> with _$ListViewSerializer {

}

