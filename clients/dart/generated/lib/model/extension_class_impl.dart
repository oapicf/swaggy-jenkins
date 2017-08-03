part of swagger.api;


@Entity()
class ExtensionClassImpl {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  ExtensionClassImpllinks links = null;
  

  @Property(name: 'classes')
  List<String> classes = [];
  
  ExtensionClassImpl();

  @override
  String toString()  {
    return 'ExtensionClassImpl[_class=$_class, links=$links, classes=$classes, ]';
  }

}

