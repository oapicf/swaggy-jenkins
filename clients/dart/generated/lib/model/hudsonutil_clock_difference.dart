part of swagger.api;


@Entity()
class HudsonutilClockDifference {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'diff')
  int diff = null;
  
  HudsonutilClockDifference();

  @override
  String toString()  {
    return 'HudsonutilClockDifference[_class=$_class, diff=$diff, ]';
  }

}

