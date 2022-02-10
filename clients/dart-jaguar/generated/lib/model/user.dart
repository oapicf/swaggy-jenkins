import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'user.jser.dart';

class User {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('fullName', isNullable: false,  )
  final String fullName;
  
  @Alias('email', isNullable: false,  )
  final String email;
  
  @Alias('name', isNullable: false,  )
  final String name;
  

  User(
      

{
     this.class_ = null,  
     this.id = null,  
     this.fullName = null,  
     this.email = null,  
     this.name = null 
    
    }
  );

  @override
  String toString() {
    return 'User[class_=$class_, id=$id, fullName=$fullName, email=$email, name=$name, ]';
  }
}

@GenSerializer(nullableFields: true)
class UserSerializer extends Serializer<User> with _$UserSerializer {

}

