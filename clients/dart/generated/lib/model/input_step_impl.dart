part of swagger.api;


@Entity()
class InputStepImpl {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  InputStepImpllinks links = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'message')
  String message = null;
  

  @Property(name: 'ok')
  String ok = null;
  

  @Property(name: 'parameters')
  List<StringParameterDefinition> parameters = [];
  

  @Property(name: 'submitter')
  String submitter = null;
  
  InputStepImpl();

  @override
  String toString()  {
    return 'InputStepImpl[_class=$_class, links=$links, id=$id, message=$message, ok=$ok, parameters=$parameters, submitter=$submitter, ]';
  }

}

