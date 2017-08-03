part of swagger.api;


@Entity()
class InputStepImpllinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  InputStepImpllinks();

  @override
  String toString()  {
    return 'InputStepImpllinks[self=$self, _class=$_class, ]';
  }

}

