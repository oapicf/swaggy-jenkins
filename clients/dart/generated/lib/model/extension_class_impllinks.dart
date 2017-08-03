part of swagger.api;


@Entity()
class ExtensionClassImpllinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  ExtensionClassImpllinks();

  @override
  String toString()  {
    return 'ExtensionClassImpllinks[self=$self, _class=$_class, ]';
  }

}

