part of swagger.api;


@Entity()
class GithubScmlinks {
  
  @Property(name: 'self')
  Link self = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GithubScmlinks();

  @override
  String toString()  {
    return 'GithubScmlinks[self=$self, _class=$_class, ]';
  }

}

