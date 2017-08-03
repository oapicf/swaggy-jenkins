part of swagger.api;


@Entity()
class ExtensionClassContainerImpl1 {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  ExtensionClassContainerImpl1links links = null;
  

  @Property(name: 'map')
  ExtensionClassContainerImpl1map map = null;
  
  ExtensionClassContainerImpl1();

  @override
  String toString()  {
    return 'ExtensionClassContainerImpl1[_class=$_class, links=$links, map=$map, ]';
  }

}

