part of swagger.api;


@Entity()
class ClockDifference {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'diff')
  int diff = null;
  
  ClockDifference();

  @override
  String toString()  {
    return 'ClockDifference[_class=$_class, diff=$diff, ]';
  }

}

