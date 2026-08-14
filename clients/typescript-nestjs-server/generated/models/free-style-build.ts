import { EmptyChangeLogSet } from './empty-change-log-set';
import { CauseAction } from './cause-action';


export interface FreeStyleBuild { 
  _class?: string;
  number?: number;
  url?: string;
  actions?: Array<CauseAction>;
  building?: boolean;
  description?: string;
  displayName?: string;
  duration?: number;
  estimatedDuration?: number;
  executor?: string;
  fullDisplayName?: string;
  id?: string;
  keepLog?: boolean;
  queueId?: number;
  result?: string;
  timestamp?: number;
  builtOn?: string;
  changeSet?: EmptyChangeLogSet;
}

