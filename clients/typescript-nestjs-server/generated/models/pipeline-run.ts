import { PipelineRunartifacts } from './pipeline-runartifacts';


export interface PipelineRun { 
  _class?: string;
  artifacts?: Array<PipelineRunartifacts>;
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

