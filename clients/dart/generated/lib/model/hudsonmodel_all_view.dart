part of swagger.api;


@Entity()
class HudsonmodelAllView {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'url')
  String url = null;
  
  HudsonmodelAllView();

  @override
  String toString()  {
    return 'HudsonmodelAllView[_class=$_class, name=$name, url=$url, ]';
  }

}

