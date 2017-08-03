part of swagger.api;


@Entity()
class AllView {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'url')
  String url = null;
  
  AllView();

  @override
  String toString()  {
    return 'AllView[_class=$_class, name=$name, url=$url, ]';
  }

}

