part of swagger.api;


@Entity()
class FavoriteImpllinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  FavoriteImpllinks();

  @override
  String toString()  {
    return 'FavoriteImpllinks[self=$self, _class=$_class, ]';
  }

}

