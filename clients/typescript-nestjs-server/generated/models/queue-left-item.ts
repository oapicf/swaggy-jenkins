import { CauseAction } from './cause-action';
import { FreeStyleBuild } from './free-style-build';
import { FreeStyleProject } from './free-style-project';


export interface QueueLeftItem { 
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
  cancelled?: boolean;
  executable?: FreeStyleBuild;
}

