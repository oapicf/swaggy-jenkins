import { StringParameterValue } from './string-parameter-value';


export interface StringParameterDefinition { 
  _class?: string;
  defaultParameterValue?: StringParameterValue;
  description?: string;
  name?: string;
  type?: string;
}

