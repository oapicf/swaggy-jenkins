import { PipelineStepImpllinks } from './pipeline-step-impllinks';
import { InputStepImpl } from './input-step-impl';


export interface PipelineStepImpl { 
  _class?: string;
  _links?: PipelineStepImpllinks;
  displayName?: string;
  durationInMillis?: number;
  id?: string;
  input?: InputStepImpl;
  result?: string;
  startTime?: string;
  state?: string;
}

