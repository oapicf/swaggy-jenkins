part of swagger.api;


@Entity()
class HudsonmodelComputerSet {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'busyExecutors')
  int busyExecutors = null;
  

  @Property(name: 'computer')
  List<HudsonmodelHudsonMasterComputer> computer = [];
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'totalExecutors')
  int totalExecutors = null;
  
  HudsonmodelComputerSet();

  @override
  String toString()  {
    return 'HudsonmodelComputerSet[_class=$_class, busyExecutors=$busyExecutors, computer=$computer, displayName=$displayName, totalExecutors=$totalExecutors, ]';
  }

}

