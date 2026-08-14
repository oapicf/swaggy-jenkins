import { PipelineRunImpllinks } from './pipeline-run-impllinks';


export interface PipelineRunImpl { 
  _class?: string;
  _links?: PipelineRunImpllinks;
  durationInMillis?: number;
  enQueueTime?: string;
  endTime?: string;
  estimatedDurationInMillis?: number;
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

