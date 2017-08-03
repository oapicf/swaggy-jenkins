part of swagger.api;


@Entity()
class BranchImpllinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: 'actions')
  Link actions = null;
  

  @Property(name: 'runs')
  Link runs = null;
  

  @Property(name: 'queue')
  Link queue = null;
  

  @Property(name: '_class')
  String _class = null;
  
  BranchImpllinks();

  @override
  String toString()  {
    return 'BranchImpllinks[self=$self, actions=$actions, runs=$runs, queue=$queue, _class=$_class, ]';
  }

}

