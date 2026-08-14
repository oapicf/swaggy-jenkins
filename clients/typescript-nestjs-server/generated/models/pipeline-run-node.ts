import { PipelineRunNodeedges } from './pipeline-run-nodeedges';


export interface PipelineRunNode { 
  _class?: string;
  displayName?: string;
  durationInMillis?: number;
  edges?: Array<PipelineRunNodeedges>;
  id?: string;
  result?: string;
  startTime?: string;
  state?: string;
}

