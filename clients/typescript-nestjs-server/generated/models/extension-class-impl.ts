import { ExtensionClassImpllinks } from './extension-class-impllinks';


export interface ExtensionClassImpl { 
  _class?: string;
  _links?: ExtensionClassImpllinks;
  classes?: Array<string>;
}

