part of swagger.api;


@Entity()
class PipelineRunNodeedges {
  
  @Property(name: 'id')
  String id = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineRunNodeedges();

  @override
  String toString()  {
    return 'PipelineRunNodeedges[id=$id, _class=$_class, ]';
  }

}

