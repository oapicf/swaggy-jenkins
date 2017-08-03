part of swagger.api;


@Entity()
class UnlabeledLoadStatistics {
  
  @Property(name: '_class')
  String _class = null;
  
  UnlabeledLoadStatistics();

  @override
  String toString()  {
    return 'UnlabeledLoadStatistics[_class=$_class, ]';
  }

}

