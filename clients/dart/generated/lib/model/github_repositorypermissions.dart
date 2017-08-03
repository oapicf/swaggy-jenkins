part of swagger.api;


@Entity()
class GithubRepositorypermissions {
  
  @Property(name: 'admin')
  bool admin = null;
  

  @Property(name: 'push')
  bool push = null;
  

  @Property(name: 'pull')
  bool pull = null;
  

  @Property(name: '_class')
  String _class = null;
  
  GithubRepositorypermissions();

  @override
  String toString()  {
    return 'GithubRepositorypermissions[admin=$admin, push=$push, pull=$pull, _class=$_class, ]';
  }

}

