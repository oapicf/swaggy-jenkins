part of swagger.api;


@Entity()
class PipelineStepImpllinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: 'actions')
  Link actions = null;
  

  @Property(name: '_class')
  String _class = null;
  
  PipelineStepImpllinks();

  @override
  String toString()  {
    return 'PipelineStepImpllinks[self=$self, actions=$actions, _class=$_class, ]';
  }

}

