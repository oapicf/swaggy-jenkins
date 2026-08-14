import { CauseAction } from './cause-action';
import { FreeStyleProject } from './free-style-project';


export interface QueueBlockedItem { 
  _class?: string;
  actions?: Array<CauseAction>;
  blocked?: boolean;
  buildable?: boolean;
  id?: number;
  inQueueSince?: number;
  params?: string;
  stuck?: boolean;
  task?: FreeStyleProject;
  url?: string;
  why?: string;
  buildableStartMilliseconds?: number;
}

