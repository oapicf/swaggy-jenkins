part of swagger.api;


@Entity()
class SwaggyjenkinsOrganisation {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  
  SwaggyjenkinsOrganisation();

  @override
  String toString()  {
    return 'SwaggyjenkinsOrganisation[_class=$_class, name=$name, ]';
  }

}

