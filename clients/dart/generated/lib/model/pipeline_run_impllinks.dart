part of swagger.api;


@Entity()
class PipelineRunImpllinks {
  
  @Property(name: 'nodes')
  Link nodes = null;
  

  @Property(name: 'log')
  Link log = null;
  

  @Property(name: 'self')
  Link self = null;
  

  @Property(name: 'actions')
  Link actions = null;
  

  @Property(name: 'steps')
  Link steps = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineRunImpllinks();

  @override
  String toString()  {
    return 'PipelineRunImpllinks[nodes=$nodes, log=$log, self=$self, actions=$actions, steps=$steps, _class=$_class, ]';
  }

}

