import { PipelineImpllinks } from './pipeline-impllinks';


export interface PipelineImpl { 
  _class?: string;
  displayName?: string;
  estimatedDurationInMillis?: number;
  fullName?: string;
  latestRun?: string;
  name?: string;
  organization?: string;
  weatherScore?: number;
  _links?: PipelineImpllinks;
}

