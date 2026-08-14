import { HudsonMasterComputerexecutors } from './hudson-master-computerexecutors';
import { HudsonMasterComputermonitorData } from './hudson-master-computermonitor-data';
import { Label1 } from './label1';


export interface HudsonMasterComputer { 
  _class?: string;
  displayName?: string;
  executors?: Array<HudsonMasterComputerexecutors>;
  icon?: string;
  iconClassName?: string;
  idle?: boolean;
  jnlpAgent?: boolean;
  launchSupported?: boolean;
  loadStatistics?: Label1;
  manualLaunchAllowed?: boolean;
  monitorData?: HudsonMasterComputermonitorData;
  numExecutors?: number;
  offline?: boolean;
  offlineCause?: string;
  offlineCauseReason?: string;
  temporarilyOffline?: boolean;
}

