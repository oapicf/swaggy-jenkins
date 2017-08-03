part of swagger.api;


@Entity()
class Link {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'href')
  String href = null;
  
  Link();

  @override
  String toString()  {
    return 'Link[_class=$_class, href=$href, ]';
  }

}

