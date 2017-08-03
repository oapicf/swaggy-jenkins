part of swagger.api;


@Entity()
class Organisation {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  
  Organisation();

  @override
  String toString()  {
    return 'Organisation[_class=$_class, name=$name, ]';
  }

}

