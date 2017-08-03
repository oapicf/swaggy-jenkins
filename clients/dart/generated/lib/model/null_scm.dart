part of swagger.api;


@Entity()
class NullSCM {
  
  @Property(name: '_class')
  String _class = null;
  
  NullSCM();

  @override
  String toString()  {
    return 'NullSCM[_class=$_class, ]';
  }

}

