part of swagger.api;


@Entity()
class PipelineStepImpl {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  PipelineStepImpllinks links = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'durationInMillis')
  int durationInMillis = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'input')
  InputStepImpl input = null;
  

  @Property(name: 'result')
  String result = null;
  

  @Property(name: 'startTime')
  String startTime = null;
  

  @Property(name: 'state')
  String state = null;
  
  PipelineStepImpl();

  @override
  String toString()  {
    return 'PipelineStepImpl[_class=$_class, links=$links, displayName=$displayName, durationInMillis=$durationInMillis, id=$id, input=$input, result=$result, startTime=$startTime, state=$state, ]';
  }

}

