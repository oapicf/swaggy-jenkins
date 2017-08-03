part of swagger.api;


@Entity()
class PipelineImpllinks {
  
  @Property(name: 'runs')
  Link runs = null;
  

  @Property(name: 'self')
  Link self = null;
  

  @Property(name: 'queue')
  Link queue = null;
  

  @Property(name: 'actions')
  Link actions = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineImpllinks();

  @override
  String toString()  {
    return 'PipelineImpllinks[runs=$runs, self=$self, queue=$queue, actions=$actions, _class=$_class, ]';
  }

}

