part of swagger.api;


@Entity()
class SwaggyjenkinsUser {
  
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
  
  SwaggyjenkinsUser();

  @override
  String toString()  {
    return 'SwaggyjenkinsUser[_class=$_class, id=$id, fullName=$fullName, email=$email, name=$name, ]';
  }

}

