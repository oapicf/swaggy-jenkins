part of swagger.api;


@Entity()
class BranchImplpermissions {
  
  @Property(name: 'create')
  bool create = null;
  

  @Property(name: 'read')
  bool read = null;
  

  @Property(name: 'start')
  bool start = null;
  

  @Property(name: 'stop')
  bool stop = null;
  

  @Property(name: '_class')
  String _class = null;
  
  BranchImplpermissions();

  @override
  String toString()  {
    return 'BranchImplpermissions[create=$create, read=$read, start=$start, stop=$stop, _class=$_class, ]';
  }

}

