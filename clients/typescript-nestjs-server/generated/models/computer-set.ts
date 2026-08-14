import { HudsonMasterComputer } from './hudson-master-computer';


export interface ComputerSet { 
  _class?: string;
  busyExecutors?: number;
  computer?: Array<HudsonMasterComputer>;
  displayName?: string;
  totalExecutors?: number;
}

