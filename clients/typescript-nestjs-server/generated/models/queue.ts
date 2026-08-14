import { QueueBlockedItem } from './queue-blocked-item';


export interface Queue { 
  _class?: string;
  items?: Array<QueueBlockedItem>;
}

