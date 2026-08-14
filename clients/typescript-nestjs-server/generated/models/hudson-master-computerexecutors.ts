import { FreeStyleBuild } from './free-style-build';


export interface HudsonMasterComputerexecutors { 
  currentExecutable?: FreeStyleBuild;
  idle?: boolean;
  likelyStuck?: boolean;
  number?: number;
  progress?: number;
  _class?: string;
}

