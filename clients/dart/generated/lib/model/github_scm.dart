part of swagger.api;


@Entity()
class GithubScm {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: '_links')
  GithubScmlinks links = null;
  

  @Property(name: 'credentialId')
  String credentialId = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'uri')
  String uri = null;
  
  GithubScm();

  @override
  String toString()  {
    return 'GithubScm[_class=$_class, links=$links, credentialId=$credentialId, id=$id, uri=$uri, ]';
  }

}

