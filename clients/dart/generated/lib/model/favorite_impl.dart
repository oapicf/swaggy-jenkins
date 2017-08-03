part of swagger.api;


@Entity()
class FavoriteImpl {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  FavoriteImpllinks links = null;
  

  @Property(name: 'item')
  PipelineImpl item = null;
  
  FavoriteImpl();

  @override
  String toString()  {
    return 'FavoriteImpl[_class=$_class, links=$links, item=$item, ]';
  }

}

