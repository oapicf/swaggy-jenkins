import { PipelinelatestRun } from './pipelinelatest-run';


export interface Pipeline { 
  _class?: string;
  organization?: string;
  name?: string;
  displayName?: string;
  fullName?: string;
  weatherScore?: number;
  estimatedDurationInMillis?: number;
  latestRun?: PipelinelatestRun;
}

