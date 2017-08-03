part of swagger.api;


@Entity()
class User {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'fullName')
  String fullName = null;
  

  @Property(name: 'email')
  String email = null;
  

  @Property(name: 'name')
  String name = null;
  
  User();

  @override
  String toString()  {
    return 'User[_class=$_class, id=$id, fullName=$fullName, email=$email, name=$name, ]';
  }

}

