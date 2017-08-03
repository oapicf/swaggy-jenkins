part of swagger.api;


@Entity()
class StringParameterValue {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'value')
  String value = null;
  
  StringParameterValue();

  @override
  String toString()  {
    return 'StringParameterValue[_class=$_class, name=$name, value=$value, ]';
  }

}

