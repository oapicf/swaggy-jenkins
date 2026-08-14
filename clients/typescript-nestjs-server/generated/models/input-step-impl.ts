import { InputStepImpllinks } from './input-step-impllinks';
import { StringParameterDefinition } from './string-parameter-definition';


export interface InputStepImpl { 
  _class?: string;
  _links?: InputStepImpllinks;
  id?: string;
  message?: string;
  ok?: string;
  parameters?: Array<StringParameterDefinition>;
  submitter?: string;
}

