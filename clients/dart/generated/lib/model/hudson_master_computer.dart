part of swagger.api;


@Entity()
class HudsonMasterComputer {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'executors')
  List<HudsonMasterComputerexecutors> executors = [];
  

  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'iconClassName')
  String iconClassName = null;
  

  @Property(name: 'idle')
  bool idle = null;
  

  @Property(name: 'jnlpAgent')
  bool jnlpAgent = null;
  

  @Property(name: 'launchSupported')
  bool launchSupported = null;
  

  @Property(name: 'loadStatistics')
  Label1 loadStatistics = null;
  

  @Property(name: 'manualLaunchAllowed')
  bool manualLaunchAllowed = null;
  

  @Property(name: 'monitorData')
  HudsonMasterComputermonitorData monitorData = null;
  

  @Property(name: 'numExecutors')
  int numExecutors = null;
  

  @Property(name: 'offline')
  bool offline = null;
  

  @Property(name: 'offlineCause')
  String offlineCause = null;
  

  @Property(name: 'offlineCauseReason')
  String offlineCauseReason = null;
  

  @Property(name: 'temporarilyOffline')
  bool temporarilyOffline = null;
  
  HudsonMasterComputer();

  @override
  String toString()  {
    return 'HudsonMasterComputer[_class=$_class, displayName=$displayName, executors=$executors, icon=$icon, iconClassName=$iconClassName, idle=$idle, jnlpAgent=$jnlpAgent, launchSupported=$launchSupported, loadStatistics=$loadStatistics, manualLaunchAllowed=$manualLaunchAllowed, monitorData=$monitorData, numExecutors=$numExecutors, offline=$offline, offlineCause=$offlineCause, offlineCauseReason=$offlineCauseReason, temporarilyOffline=$temporarilyOffline, ]';
  }

}

