import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/hudson_master_computerexecutors.dart';

import 'package:openapi/model/hudson_master_computermonitor_data.dart';

import 'package:openapi/model/label1.dart';

part 'hudson_master_computer.jser.dart';

class HudsonMasterComputer {
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  
  @Alias('displayName', isNullable: false,  )
  final String displayName;
  
  @Alias('executors', isNullable: false,  )
  final List<HudsonMasterComputerexecutors> executors;
  
  @Alias('icon', isNullable: false,  )
  final String icon;
  
  @Alias('iconClassName', isNullable: false,  )
  final String iconClassName;
  
  @Alias('idle', isNullable: false,  )
  final bool idle;
  
  @Alias('jnlpAgent', isNullable: false,  )
  final bool jnlpAgent;
  
  @Alias('launchSupported', isNullable: false,  )
  final bool launchSupported;
  
  @Alias('loadStatistics', isNullable: false,  )
  final Label1 loadStatistics;
  
  @Alias('manualLaunchAllowed', isNullable: false,  )
  final bool manualLaunchAllowed;
  
  @Alias('monitorData', isNullable: false,  )
  final HudsonMasterComputermonitorData monitorData;
  
  @Alias('numExecutors', isNullable: false,  )
  final int numExecutors;
  
  @Alias('offline', isNullable: false,  )
  final bool offline;
  
  @Alias('offlineCause', isNullable: false,  )
  final String offlineCause;
  
  @Alias('offlineCauseReason', isNullable: false,  )
  final String offlineCauseReason;
  
  @Alias('temporarilyOffline', isNullable: false,  )
  final bool temporarilyOffline;
  

  HudsonMasterComputer(
      

{
     this.class_ = null,  
     this.displayName = null,  
     this.executors = const [],  
     this.icon = null,  
     this.iconClassName = null,  
     this.idle = null,  
     this.jnlpAgent = null,  
     this.launchSupported = null,  
     this.loadStatistics = null,  
     this.manualLaunchAllowed = null,  
     this.monitorData = null,  
     this.numExecutors = null,  
     this.offline = null,  
     this.offlineCause = null,  
     this.offlineCauseReason = null,  
     this.temporarilyOffline = null 
    
    }
  );

  @override
  String toString() {
    return 'HudsonMasterComputer[class_=$class_, displayName=$displayName, executors=$executors, icon=$icon, iconClassName=$iconClassName, idle=$idle, jnlpAgent=$jnlpAgent, launchSupported=$launchSupported, loadStatistics=$loadStatistics, manualLaunchAllowed=$manualLaunchAllowed, monitorData=$monitorData, numExecutors=$numExecutors, offline=$offline, offlineCause=$offlineCause, offlineCauseReason=$offlineCauseReason, temporarilyOffline=$temporarilyOffline, ]';
  }
}

@GenSerializer(nullableFields: true)
class HudsonMasterComputerSerializer extends Serializer<HudsonMasterComputer> with _$HudsonMasterComputerSerializer {

}

