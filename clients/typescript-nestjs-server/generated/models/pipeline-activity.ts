import { PipelineActivityartifacts } from './pipeline-activityartifacts';


export interface PipelineActivity { 
  _class?: string;
  artifacts?: Array<PipelineActivityartifacts>;
  durationInMillis?: number;
  estimatedDurationInMillis?: number;
  enQueueTime?: string;
  endTime?: string;
  id?: string;
  organization?: string;
  pipeline?: string;
  result?: string;
  runSummary?: string;
  startTime?: string;
  state?: string;
  type?: string;
  commitId?: string;
}

