import { FreeStyleProject } from './free-style-project';


export interface ListView { 
  _class?: string;
  description?: string;
  jobs?: Array<FreeStyleProject>;
  name?: string;
  url?: string;
}

