part of swagger.api;


@Entity()
class ComputerSet {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'busyExecutors')
  int busyExecutors = null;
  

  @Property(name: 'computer')
  List<HudsonMasterComputer> computer = [];
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'totalExecutors')
  int totalExecutors = null;
  
  ComputerSet();

  @override
  String toString()  {
    return 'ComputerSet[_class=$_class, busyExecutors=$busyExecutors, computer=$computer, displayName=$displayName, totalExecutors=$totalExecutors, ]';
  }

}

