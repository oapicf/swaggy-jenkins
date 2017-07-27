part of swagger.api;


@Entity()
class HudsonmodelStringParameterValue {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'value')
  String value = null;
  
  HudsonmodelStringParameterValue();

  @override
  String toString()  {
    return 'HudsonmodelStringParameterValue[_class=$_class, name=$name, value=$value, ]';
  }

}

