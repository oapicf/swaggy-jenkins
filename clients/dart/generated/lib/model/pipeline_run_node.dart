part of swagger.api;


@Entity()
class PipelineRunNode {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'durationInMillis')
  int durationInMillis = null;
  

  @Property(name: 'edges')
  List<PipelineRunNodeedges> edges = [];
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'result')
  String result = null;
  

  @Property(name: 'startTime')
  String startTime = null;
  

  @Property(name: 'state')
  String state = null;
  
  PipelineRunNode();

  @override
  String toString()  {
    return 'PipelineRunNode[_class=$_class, displayName=$displayName, durationInMillis=$durationInMillis, edges=$edges, id=$id, result=$result, startTime=$startTime, state=$state, ]';
  }

}

