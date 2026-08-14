import { CauseUserIdCause } from './cause-user-id-cause';


export interface CauseAction { 
  _class?: string;
  causes?: Array<CauseUserIdCause>;
}

