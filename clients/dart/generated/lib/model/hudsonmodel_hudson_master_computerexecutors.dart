part of swagger.api;


@Entity()
class HudsonmodelHudsonMasterComputerexecutors {
  
  @Property(name: 'currentExecutable')
  HudsonmodelFreeStyleBuild currentExecutable = null;
  

  @Property(name: 'idle')
  bool idle = null;
  

  @Property(name: 'likelyStuck')
  bool likelyStuck = null;
  

  @Property(name: 'number')
  int number = null;
  

  @Property(name: 'progress')
  int progress = null;
  

  @Property(name: '_class')
  String _class = null;
  
  HudsonmodelHudsonMasterComputerexecutors();

  @override
  String toString()  {
    return 'HudsonmodelHudsonMasterComputerexecutors[currentExecutable=$currentExecutable, idle=$idle, likelyStuck=$likelyStuck, number=$number, progress=$progress, _class=$_class, ]';
  }

}

