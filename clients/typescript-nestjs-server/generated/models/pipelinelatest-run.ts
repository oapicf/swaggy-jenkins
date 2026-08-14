import { PipelinelatestRunartifacts } from './pipelinelatest-runartifacts';


export interface PipelinelatestRun { 
  artifacts?: Array<PipelinelatestRunartifacts>;
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
  _class?: string;
}

