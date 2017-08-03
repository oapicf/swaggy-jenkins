part of swagger.api;


@Entity()
class StringParameterDefinition {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'defaultParameterValue')
  StringParameterValue defaultParameterValue = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'type')
  String type = null;
  
  StringParameterDefinition();

  @override
  String toString()  {
    return 'StringParameterDefinition[_class=$_class, defaultParameterValue=$defaultParameterValue, description=$description, name=$name, type=$type, ]';
  }

}

