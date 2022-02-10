import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'github_repositorypermissions.jser.dart';

class GithubRepositorypermissions {
  
  @Alias('admin', isNullable: false,  )
  final bool admin;
  
  @Alias('push', isNullable: false,  )
  final bool push;
  
  @Alias('pull', isNullable: false,  )
  final bool pull;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  GithubRepositorypermissions(
      

{
     this.admin = null,  
     this.push = null,  
     this.pull = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'GithubRepositorypermissions[admin=$admin, push=$push, pull=$pull, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class GithubRepositorypermissionsSerializer extends Serializer<GithubRepositorypermissions> with _$GithubRepositorypermissionsSerializer {

}

