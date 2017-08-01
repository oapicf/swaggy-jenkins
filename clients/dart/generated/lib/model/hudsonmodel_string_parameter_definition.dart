part of swagger.api;


@Entity()
class HudsonmodelStringParameterDefinition {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'defaultParameterValue')
  HudsonmodelStringParameterValue defaultParameterValue = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'type')
  String type = null;
  
  HudsonmodelStringParameterDefinition();

  @override
  String toString()  {
    return 'HudsonmodelStringParameterDefinition[_class=$_class, defaultParameterValue=$defaultParameterValue, description=$description, name=$name, type=$type, ]';
  }

}

